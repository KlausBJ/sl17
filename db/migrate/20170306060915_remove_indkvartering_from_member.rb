class RemoveIndkvarteringFromMember < ActiveRecord::Migration[5.0]
  def change
		remove_column :members, :indkvartering, :string
  end
end
