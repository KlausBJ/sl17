class Activity < ApplicationRecord
  belongs_to :person
  belongs_to :place
  has_many :tasks
  has_many :tickets
  has_many :people, through: :tickets
  
  require 'csv'
  
  def for_sale_group(people)
    people.each do |person|
      #
    end
  end
  
  def  age?(p)
    minage = min_age.nil? || min_age == "" || (min_age > 999 && ((p.ptype.datereq && p.aargang.year >= min_age) || !p.datereq)) || (min_age == 21 && p.ptype_id == 1) || (min_age < 21 && min_age >= 18 && p.ptype_id == 2) || (min_age < 18 && starttime - min_age.years >= p.aargang)
    if minage
      maxage = max_age.nil? || max_age == "" || (max_age > 999 && p.ptype.datereq && p.aargang.year <= min_age) || (max_age >= 18 && max_age <= 21 && p.ptype_id == 2) || (max_age < 18 && p.ptype.datereq && p.aargang >= starttime - max_age.years)
    end
    return minage && maxage
  end
  
  def conflicts
    Activity.where("id <> ?", id).where("starttime < ?", endtime).where("endtime > ?", starttime)
  end
  
  def for_sale?(person)
  return any_left? && person.tickets.none? || ((person.tickets.map(&:activity_id) & conflicts.map(&:id)).none?)
  end
  
  def any_left?
    return number.nil? || number > sold + reserved
  end
  
  def sold
    tickets.includes(:invoice).where(:invoices => { :paid => true } ).count
  end
  
  def reserved
    tickets.includes(:invoice).where(:invoices => { :paid => false }).where(:invoices => { updated_at: (Time.now - 20.minutes)..Time.now } ).count 
  end
  
  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'bom|utf-8') do |row|
      
      activity_hash = row.to_hash
      activity = Activity.where(name: activity_hash["navn"], place_id: (Place.find_by(name: activity_hash["sted"])).id)
      
      if activity.count >= 1
        #skip this activity
      else
        mid = (Member.find_by(number: activity_hash["number"])).id
        fname = activity_hash["name"].split(" ")[0]      
        activity.create!(name: activity_hash["navn"], person_id: (Person.where(member_id: mid).where("name like ?", fname+"%"))[0].id, starttime: (activity_hash["tid"]).to_datetime, endtime: (((activity_hash["tid"]).to_datetime).to_time + 1.hours).to_datetime, number: activity_hash["number"], place_id: (Place.find_by(name: activity_hash["sted"])).id, deltbet: activity_hash["deltbet"])
      end #if
    end #CSV.foreach
  end #self.import

end
