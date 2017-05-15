class CreateDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptions do |t|
      t.text :content
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
