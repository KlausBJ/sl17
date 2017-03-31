# Central class for payment of participation and/or activities
class Invoice < ApplicationRecord
  belongs_to :member
  has_many :tickets, dependent: :destroy
  has_many :people, dependent: :destroy

  def total
    people.map { |p| p.ptype.price }.sum +
      tickets.map { |t| t.activity.deltbet.to_i }.sum
  end

  def free?
    (
      people.map do |p|
        p.ptype.price
      end.sum + tickets.map do |t|
        t.activity.deltbet.to_i
      end.sum
    ).zero?
  end
end
