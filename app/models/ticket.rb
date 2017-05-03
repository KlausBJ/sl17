# Link between Activity and Person
class Ticket < ApplicationRecord
  belongs_to :person
  belongs_to :activity
  belongs_to :invoice

  validates_uniqueness_of :activity_id, scope: :person_id
end
