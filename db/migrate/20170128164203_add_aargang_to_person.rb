class AddAargangToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :aargang, :date
  end
end
