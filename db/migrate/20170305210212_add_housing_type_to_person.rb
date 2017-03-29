class AddHousingTypeToPerson < ActiveRecord::Migration[5.0]
  def change
    add_reference :people, :housing_type, foreign_key: true
  end
end
