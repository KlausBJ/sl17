class AddGenderToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :gender, :integer
  end
end
