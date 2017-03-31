# Clearance is used to manage permissions for members
class Clearance < ApplicationRecord
  belongs_to :member
  belongs_to :role
end
