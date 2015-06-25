class AddAprToUser < ActiveRecord::Migration
  def change
    add_column :users, :apr, :decimal
  end
end
