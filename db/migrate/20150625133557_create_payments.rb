class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :loan_id
      t.decimal :amount
      t.datetime :date
      t.string :status

      t.timestamps null: false
    end
  end
end
