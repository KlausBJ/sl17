class AddShowToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :show, :boolean, default: false
  end
end
