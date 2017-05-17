class RemoveOldDescriptionFromActivities < ActiveRecord::Migration[5.0]
  def change
    remove_column :activities, :old_description, :string
  end
end
