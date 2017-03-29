class AddHousingTypeToMember < ActiveRecord::Migration[5.0]
  def change
    add_reference :members, :housing_type, foreign_key: true
  end
end
