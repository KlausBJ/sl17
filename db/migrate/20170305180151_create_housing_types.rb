class CreateHousingTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :housing_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
