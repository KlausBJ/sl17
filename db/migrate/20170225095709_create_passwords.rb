class CreatePasswords < ActiveRecord::Migration[5.0]
  def change
    create_table :passwords do |t|
      t.string :password
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
