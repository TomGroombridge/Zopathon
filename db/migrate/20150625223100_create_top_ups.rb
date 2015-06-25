class CreateTopUps < ActiveRecord::Migration
  def change
    create_table :top_ups do |t|
      t.decimal :amount
      t.integer :loan_id

      t.timestamps null: false
    end
  end
end
