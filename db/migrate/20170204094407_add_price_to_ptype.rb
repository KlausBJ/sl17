class AddPriceToPtype < ActiveRecord::Migration[5.0]
  def change
    add_column :ptypes, :price, :integer
  end
end
