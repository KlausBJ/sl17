# Link between people and Tasks
class Assignment < ApplicationRecord
  belongs_to :person, dependent: :destroy
  belongs_to :task, dependent: :destroy
end
