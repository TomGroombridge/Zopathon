class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.decimal :loan_amount
      t.integer :length_of_loan
      t.decimal :apr

      t.timestamps null: false
    end
  end
end
