class AddHousingNumberToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :housing_number, :string
  end
end
