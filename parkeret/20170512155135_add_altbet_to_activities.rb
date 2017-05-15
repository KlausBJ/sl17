class AddAltbetToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :altbet, :string
  end
end
