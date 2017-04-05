# Activities for participants, some of which are payable
class Activity < ApplicationRecord
  belongs_to :person
  belongs_to :place
  has_many :tasks
  has_many :tickets
  has_many :people, through: :tickets

  require 'csv'

  def age?(p)
    minage = min_age.nil? || min_age == '' || (
      min_age > 999 && (
        (p.ptype.datereq && p.aargang.year >= min_age) ||
        !p.datereq
      )
    ) || (min_age == 21 && p.ptype_id == 1) || (
      min_age < 21 && min_age >= 18 && p.ptype_id == 2
    ) || (min_age < 18 && starttime - min_age.years >= p.aargang)
    if minage
      maxage = max_age.nil? || max_age == '' || (max_age > 999 &&
        p.ptype.datereq && p.aargang.year <= min_age) || (max_age >= 18 &&
        max_age <= 21 && p.ptype_id == 2) || (max_age < 18 &&
        p.ptype.datereq && p.aargang >= starttime - max_age.years)
    end
    minage && maxage
  end
  
  def current(member_id)
    people.where(member_id: member_id).map(&:id)
  end
  
  def add(person_ids)
    person_ids.each do |person_id|
      if any_left?
        person = Person.find(person_id)
        invoice = person.member.invoices.where(paid: false).last
        invoice ||= Invoice.create(member: person.member, paid: false)
        Ticket.create activity_id: id,
                      person_id: person_id,
                      invoice_id: invoice.id
      end
    end
  end
  
  def remove(person_ids)
    person_ids.each do |person_id|
      ticket = Ticket.find_by activity_id: id,
                              person_id: person_id
      ticket.destroy
    end
  end
  
  def ptoggle(member_id, person_ids)
    Rails.logger.debug(member_id)
    Rails.logger.debug(person_ids)
    crnt = current member_id
    to_be = (person_ids - ['']).map { |p| p.to_i }
    add (to_be - crnt)
    remove (crnt - to_be)
  end

  def conflicts
    Activity.where(
      'id <> ?', id
    ).where(
      'starttime < ?', endtime
    ).where(
      'endtime > ?', starttime
    )
  end

  def for_sale?(person)
    any_left? && (
      person.tickets.none? || (
        person.tickets.map(&:activity_id) &
        conflicts.map(&:id)
      ).none?
    )
  end

  def blocked_by(person)
    (conflicts.map(&:id) & person.tickets.map(&:activity_id)).map { |c| Activity.find(c).name }.join(', ')
  end

  def any_left?
    number.nil? || number.zero? || number > sold + reserved
  end

  def sold
    tickets.includes(:invoice).where(invoices: { paid: true }).count
  end

  def reserved
    tickets.includes(:invoice).where(invoices: { paid: false }).where(invoices:
      { updated_at: (Time.now - 20.minutes)..Time.now }).count
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'bom|utf-8') do |row|
      activity_hash = row.to_hash
      activity = Activity.where(
        name: activity_hash['navn'],
        place_id: Place.find_by(name: activity_hash['sted']).id
      ) # mulighed for ens navne, hvis tiderne er forskellige

      if activity.none?
        mid = Member.find_by(number: activity_hash['tovholdermedlemsnr']).id
        fname = activity_hash['tovholdernavn'].split(' ')[0]
        activity.create!  name: activity_hash['navn'],
                          person_id: Person.where(member_id: mid).where(
                            'name like ?', fname + '%'
                          )[0].id,
                          starttime: activity_hash['starttid'].to_datetime,
                          endtime: (
                            (activity_hash['sluttid']).to_datetime.to_time + 1.hours
                          ).to_datetime,
                          number: activity_hash['antal'],
                          place_id: Place.find_by(
                            name: activity_hash['sted']
                          ).id,
                          deltbet: activity_hash['deltagerbetaling'],
                          min_age: activity_hash['min_alder'],
                          max_age: activity_hash['max_alder']
      end # if
    end # CSV.foreach
  end # self.import
end
