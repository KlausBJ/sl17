class AddConflictIdsToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :conflict_ids, :string
  end
end
