class AddMonthsToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :months, :integer
  end
end
