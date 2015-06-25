class AddCreditLimitToUser < ActiveRecord::Migration
  def change
    add_column :users, :credit_limit, :decimal
  end
end
