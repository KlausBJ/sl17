class AddPtypesOkToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :ptypes_ok, :string
  end
end
