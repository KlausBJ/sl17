class AddHousingNumberToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :housing_number, :string
  end
end
