# Task for Person
class Task < ApplicationRecord
  belongs_to :activity
  has_many :assignments

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      task_hash = row.to_hash
      task = Task.where(
        name: task_hash['name'],
        activity_id: Activity.find_by(name: task_hash['activity']).id,
        time: task_hash['date']
      )

      if task.count == 1
        # skip this task
      else
        task.create!  name: task_hash['name'],
                      activity_id: Activity.find_by(
                        name: task_hash['activity']
                      ).id,
                      time: task_hash['date'],
                      number: task_hash['number']
      end # if
    end # CSV.foreach
  end # self.import
end
