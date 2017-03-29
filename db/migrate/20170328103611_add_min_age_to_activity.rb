class AddMinAgeToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :min_age, :integer
  end
end
