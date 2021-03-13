class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.decimal :order_price
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
