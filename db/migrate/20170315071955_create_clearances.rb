class CreateClearances < ActiveRecord::Migration[5.0]
  def change
    create_table :clearances do |t|
      t.references :member, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
