class AddHostMemberToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :host_member, :integer
  end
end
