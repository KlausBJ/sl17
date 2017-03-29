class AddMaxAgeToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :max_age, :integer
  end
end
