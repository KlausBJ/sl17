class AddIndkvarteringToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :indkvartering, :string
  end
end
