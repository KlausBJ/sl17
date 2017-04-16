class AddSoldOutToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :sold_out, :string
  end
end
