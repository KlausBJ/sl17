class Member < ApplicationRecord
  add_access_utilities
	
	has_many :people
	has_many :invoices
	has_one :password
	belongs_to :housing_type, optional: true
	has_many :clearances
	has_many :roles, through: :clearances
  validates :name, presence: true
  validates_format_of :email, :with => /\A([a-z0-9]+[_\-.+]+)*[a-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-z]{2,}\z/i
  
  require 'csv'
	
	def inv?
		return invoices.map{|i| i.people.any? || i.tickets.any?}.reduce(:|)
	end
	
	def guest_people
		return Person.where(host_member: number).map{|p| p if p.invoice.paid}
	end
	
	def admin?
		return clearance_levels.include? :admin
	end
	
	def roles_to_s
		return roles.any? ? "(#{roles.map{|r| r.name.capitalize}.join ', '})" : ""
		# <%= session[:member_id].to_i > 0 && Member.find(session[:member_id]).roles.any? ? " (#{Member.find(session[:member_id]).roles.map{|r| r.name.to_s.capitalize}.join ', '})" : "" %>
	end
	
	def hostmember
		return people.where("host_member IS NOT NULL").any?
	end
	
  def editable?(cm)
		return (cm.roles.any? && cm.roles.map{|r| r.name.to_sym}.include?(:admin)) || (cm.nil? && invoices.none?) || (cm.id == id)
	end
	
	def housing
		return "#{housing_type.name if housing_type} #{housing_number}"
	end
	
	def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      updated = 0
			added = 0
      member_hash = row.to_hash
      member = Member.where(number: member_hash["number"])
      
      if member.count == 1
        #skip this member - or perhaps update?
				m = member[0]
				if m.people.paid.none?
					m.name = member_hash["name"]
					m.email = member_hash["email"]
					m.save
					updated += 1
				end
      else
        member.create!(member_hash)
				added += 1
      end #if
    end #CSV.foreach
  end #self.import
  
  def self.search(search)
    where("name LIKE ? OR number LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
	
	def generate_password
		password ||= Password.create(password: Word.all[id % Word.count].word + (id % 90 + 10).to_s, member_id: id)
		save
	end
	
	private
		def clearance_levels
			roles.map{|r| r.name.to_sym}
		end
  
          
end
