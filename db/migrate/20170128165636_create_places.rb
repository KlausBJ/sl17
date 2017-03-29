class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :limited

      t.timestamps
    end
  end
end
