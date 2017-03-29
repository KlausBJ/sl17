class Activity < ApplicationRecord
  belongs_to :person
  belongs_to :place
  has_many :tasks
  has_many :tickets
	has_many :people, through: :tickets
  
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'bom|utf-8') do |row|
      
      activity_hash = row.to_hash
      activity = Activity.where(name: activity_hash["name"], place_id: (Place.find_by(name: activity_hash["place"])).id)
      
      if activity.count >= 1
        #skip this activity
      else
        mid = 354 #(Member.find_by(number: activity_hash["number"])).id
        fname = "Klaus" #activity_hash["name"].split(" ")[0]      
			activity.create!(name: activity_hash["name"], person_id: (Person.where(member_id: mid).where("name like ?", fname+"%"))[0].id, starttime: (activity_hash["starttime"]).to_datetime, endtime: ((activity_hash["starttime"]).to_datetime.to_time + 2.hours).to_datetime, number: activity_hash["number"], place_id: (Place.find_by(name: activity_hash["place"])).id, deltbet: activity_hash["deltbet"])
      end #if
    end #CSV.foreach
  end #self.import
	
	def toggle_tickets
	end
	
	def conflicts
		return Activity.where('id <> ?', id).where('starttime <= ?', endtime).where('endtime >= ?', starttime)
	end
	#scope :paid, -> { order(:member_id).joins(:invoice).where('invoices.paid = true') }

end
