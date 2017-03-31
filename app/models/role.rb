# Link between Member and Clearance
class Role < ApplicationRecord
  has_many :clearances
  has_many :members, through: :clearances
end
