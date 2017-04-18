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
      end.sum + tickets.includes(:activity).map do |t|
        t.activity.deltbet.to_i
      end.sum
    ).zero?
  end

  def refresh
    Rails.logger.info("refresh")
    return if tickets.none? # nothing to check
    tickets.each do |ticket|
      # destroy if no longer available
      ticket.destroy unless ticket.activity.any_left?
    end
    touch
  end
end
