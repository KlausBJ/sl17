class Person < ApplicationRecord
  belongs_to :member
  belongs_to :ptype
  belongs_to :invoice
  has_many :activities
  has_many :assignments
  has_many :tickets
  belongs_to :housing_type, optional: true
  
  require 'csv'
  
  KOEN_TYPES = ["M", "K"]
  
  scope :paid, -> { order(:member_id).joins(:invoice).where('invoices.paid = true') }
  
  scope :unpaid, -> { order(:member_id).joins(:invoice).where('invoices.paid <> true') }
  
  validate do |person|
    if person.ptype.datereq
      if person.aargang.class != Date
        person.errors[:base] << "Fødselsdag skal angives"
      end
    end
  end
  
  def ticket?(activity)
    return tickets.where(activity: activity).any?
  end
  
  def housing
    if housing_type || housing_number
      return "#{housing_type.name if housing_type} #{housing_number}"
    else
      return member.housing
    end
  end
  
  def fdag
    if aargang.nil?
      return ""
    else
      return aargang.strftime("%d") + "/" + aargang.strftime("%m") + "-" + aargang.strftime("%Y")
      #<% unless person.aargang.nil? %><%= person.aargang.strftime("%d") %>/<%= person.aargang.strftime("%m") %>-<%= person.aargang.strftime("%Y") %><% end %>
    end
  end
  
  def deletable?(cm)
    return cm && !invoice.paid && ((cm.roles.any? && cm.roles.map{|r| r.name.to_sym}.include?(:admin)) || cm.id == member_id) && (ptype_id != 1 || member.people.where(ptype_id: 1).where("id <> ?", id).any? || member.people.where("ptype_id <> 1").where("host_member IS NULL").none?)
    #<% if person.ptype_id != 1 || @member.people.where(ptype_id: 1).where("id <> ?", person.id).any? || @member.people.where("ptype_id <> 1").where("host_member IS NULL").none?
  end
  
  def self.import(file)
    CSV.foreach(file.path, headers: true,) do |row|
      
      person_hash = row.to_hash
      person = Person.where(name: person_hash["name"],member_id: (Member.find_by(number: person_hash["number"])).id)
      
      if person.count == 1
        #skip this person
      else
        person.create!(name: person_hash["name"], member_id: (Member.find_by(number: person_hash["number"])).id, ptype_id: person_hash["ticket_type_id"], aargang: person_hash["aargang"], koen: person_hash["koen"])
      end #if
    end #CSV.foreach
  end #self.import

end
