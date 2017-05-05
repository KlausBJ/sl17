# Participants, related to Member
class Person < ApplicationRecord
  belongs_to :member
  belongs_to :ptype
  belongs_to :invoice
  has_many :activities
  has_many :assignments
  has_many :tickets
  belongs_to :housing_type, optional: true

  require 'csv'

  KOEN_TYPES = ['M', 'K'].freeze

  scope :paid, lambda {
    order(:member_id).joins(:invoice).where('invoices.paid = true')
  }

  scope :unpaid, lambda {
    order(:member_id).joins(:invoice).where('invoices.paid <> true')
  }

  validate do |person|
    if person.ptype.datereq
      if person.aargang.class != Date
        person.errors[:base] << 'Fødselsdag skal angives'
      end
    end
  end

  def ticket?(activity)
    tickets.where(activity: activity).any?
  end

  def adults?
    ptype_id == 1 || Person.where('member_id = ?', member_id).where('id <> ?', id).where(ptype_id: 1).any?
  end

  def housing
    return p_housing if defined? p_housing
    return "#{housing_type.name if housing_type} #{housing_number}" if housing_type || housing_number
    member.housing
  end

  def fdag
    return '' if aargang.nil?
    aargang.strftime('%d') + '/' + aargang.strftime('%m') + '-' +
      aargang.strftime('%Y')
  end

  def deletable?(cm)
    cm && !invoice.paid && ((cm.roles.any? && cm.roles.map do |r|
      r.name.to_sym
    end.include?(:admin)) || cm.id == member_id) && (
      ptype_id != 1 || member.people.where(ptype_id: 1).where(
        'id <> ?', id
      ).any? || member.people.where('ptype_id <> 1').where(
        'host_member IS NULL'
      ).none?
    )
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      person_hash = row.to_hash
      person = Person.where(
        name: person_hash['name'],
        member_id: Member.find_by(number: person_hash['number']).id
      )

      if person.count == 1
        # skip this person
      else
        person.create!  name: person_hash['name'],
                        member_id: Member.find_by(
                          number: person_hash['number']
                        ).id,
                        ptype_id: person_hash['ticket_type_id'],
                        aargang: person_hash['aargang'],
                        koen: person_hash['koen']
      end # if
    end # CSV.foreach
  end # self.import
end
