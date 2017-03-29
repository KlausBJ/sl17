class AddDatereqToPtype < ActiveRecord::Migration[5.0]
  def change
    add_column :ptypes, :datereq, :boolean, default: false
  end
end
