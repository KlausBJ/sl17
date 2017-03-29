class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.references :person, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
