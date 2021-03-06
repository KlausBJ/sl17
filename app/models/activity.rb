# Activities for participants, some of which are payable
class Activity < ApplicationRecord
  belongs_to :person, optional: true
  belongs_to :place, optional: true
  has_many :tasks
  has_many :tickets
  has_many :people, through: :tickets
  # just testing...
  has_many :invoices, through: :tickets
  has_one :description, dependent: :destroy

  require 'csv'

  scope :sold_out, lambda {
    where('number > 0').
        joins(:tickets, :invoices).
        where('invoices.paid = true or invoices.updated_at > ?', Time.now - 20.minutes).
        group('activities.id').having('count(tickets.id) >= activities.number')
  }

  def age?(p) # skal være en del af én query som finder ALT!
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

  def add(invoice_id, person_id)
    if any_left?
      Ticket.create activity_id: id,
                    person_id: person_id,
                    invoice_id: invoice_id,
                    activity_name: self.name
    end
  end

  def remove(person_id)
    ticket = Ticket.find_by activity_id: id,
                            person_id: person_id
    ticket.destroy
  end

  def ptoggle(member_id, person_id)
    member = Member.find(member_id)
    invoice = member.invoices.where(paid: false).last
    invoice ||= Invoice.create(member: member, paid: false)
    invoice.refresh unless invoice.updated_at > Time.now - 20.minutes
    crnt = current member_id
    to_be = ((person_ids || []) - ['']).map { |p| p.to_i }
    to_add = (to_be || []) - crnt
    add invoice.id, to_add if to_add.any?
    to_remove = crnt - (to_be || [])
    remove invoice.id, to_remove if to_remove.any?
    invoice
  end

  def conflicts # skal være en del af én query som finder ALT!
    Activity.where(
      'id <> ?', id
    ).where(
      'starttime < ?', endtime
    ).where(
      'endtime > ?', starttime
    ).where(show: 1)
  end

  def for_sale?(person) # skal være en del af én query som finder ALT!
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

  def any_left? # skal være en del af én query som finder ALT!
    number.nil? || number.zero? || number > sold + reserved
  end

  def sold
    tickets.includes(:invoice).where(invoices: { paid: true }).count
  end

  def reserved
    tickets.includes(:invoice).where(invoices: { paid: false }).where(invoices: {
        updated_at: (Time.now - 20.minutes)..Time.now
    } ).count
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'bom|utf-8', col_sep: ';') do |row|
      ah = row.to_hash
      place = Place.find_by(name: ah['Resource'])
      place_id = place.id if place
      activity = Activity.where(
        name: ah['title'],
        place_id: place_id,
        starttime: ah['starttid']
      )

      if activity.none?
        starttime = ah['Begin']
        endtime = ah['End']
        fname = ah['User'].split(' ')[0]
        a_member = Member.find_by(number: ah['Medlemsnr'])
        mid = a_member.id if a_member
        a_persons = Person.where(member_id: mid).where(
            'name like ?', fname + '%'
        ) if mid
        pid = a_persons[0].id if a_persons && a_persons.any?
        min_age = ah['min_alder'].to_i
        max_age = ah['max_alder'].to_i
        show = ah['show']
        # switch if wrongly provided
        if max_age && min_age && max_age > 999 && min_age > 999 && min_age < max_age
          min_age, max_age = max_age, min_age
        end

        # process min_age and max_age
        if min_age.zero? && max_age.zero?
          ptypes_ok = "1,2,3,4"
        else
          last_date = min_age.to_i > 999 ? "#{min_age}-12-31".to_date :
            starttime.to_date - min_age.to_i.years
          first_date = max_age.to_i > 999 ? "#{max_age}-01-01".to_date :
            starttime.to_date - max_age.to_i.years
          if first_date == starttime.to_date
            first_date -= 100.years
          else
            first_date -= 1.years
          end

          ptypes_ok_array = []

          ptypes_ok_array << 1 if (first_date..last_date).include? starttime.to_date - 22.years
          ptypes_ok_array << 2 if (first_date..last_date).include? starttime.to_date - 19.years
          ptypes_ok_array << 3 if (first_date..last_date).include? "1999-07-16".to_date.."2013-07-07".to_date
          ptypes_ok_array << 4 if (first_date..last_date).include? "2013-07-16".to_date.."2017-07-07".to_date

          ptypes_ok = ptypes_ok_array.join(',')
        end
        if ah['Deltagerbetaling'] && ah['Deltagerbetaling'].include?(' ')
          altbet = ah['Deltagerbetaling']
          deltbet = nil
        else
          deltbet = ah['Deltagerbetaling']
          altbet = nil
        end

        activity.create!(
                          name: ah['Title'],
                          description: Description.create(content: ah['Description']),
                          person_id: pid,
                          starttime: starttime.to_datetime,
                          endtime: endtime.to_datetime,
                          number: ah['*Max. Deltagerantal'],
                          place_id: place_id,
                          deltbet: deltbet,
                          altbet: altbet,
                          min_age: min_age,
                          max_age: max_age,
                          first_date: first_date,
                          last_date: last_date,
                          ptypes_ok: ptypes_ok,
                          show: show,
                          gender: ah['gender']
        )
        conflicts = activity.conflicts
      end # if
    end # CSV.foreach
    activities = Activity.where(show: 1)
    activities.each do |act|
      act.conflict_ids = act.conflicts.map(&:id).join(',')
      act.save
    end
  end # self.import
end
