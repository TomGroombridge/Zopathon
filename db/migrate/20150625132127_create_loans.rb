class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.decimal :total
      t.decimal :total_repayable
      t.decimal :monthly_repayments
      t.datetime :monthly_due_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
