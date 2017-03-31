# Central class for payment of participation and/or activities
class Invoice < ApplicationRecord
  belongs_to :member
  has_many :tickets, dependent: :destroy
  has_many :people, dependent: :destroy

  def total
    return people.map{|p| p.ptype.price}.sum + tickets.map{|t| t.activity.deltbet.to_i}.sum
  end

  def free?
    return (people.map{|p| p.ptype.price}.sum + tickets.map{|t| t.activity.deltbet.to_i}.sum) == 0
  end
end
