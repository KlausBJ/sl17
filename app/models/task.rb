# Task for Person
class Task < ApplicationRecord
  belongs_to :activity, optional: true
  has_many :assignments

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      task_hash = row.to_hash
      name = task_hash['name']
      if name.nil?
        name = 'Ikke angivet'
      end
      activity_id = Activity.find_by(name: task_hash['Title']).id if Activity.find_by(name: task_hash['Title'])
      task = Task.where(
        name: name,
        activity_id: activity_id,
        time: task_hash['Begin']
      )

      if task.count == 1
        # skip this task
      else
        task.create!  name: name[0..19],
                      description: name,
                      activity_id: activity_id,
                      time: task_hash['Begin'],
                      number: task_hash['number']
      end # if
    end # CSV.foreach
  end # self.import
end
