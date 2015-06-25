class AddAprToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :apr, :decimal
    add_column :loans, :offer_apr, :decimal
  end
end
