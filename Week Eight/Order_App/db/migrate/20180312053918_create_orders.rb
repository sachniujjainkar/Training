class CreateOrders < ActiveRecord::Migration[5.1]
  def up
    create_table :orders do |t|
      t.integer :order_no
      t.boolean :is_express_delivery
      t.string :is_customer_pickup_boolean
      t.date :delivery_date
      t.decimal :order_currency
      t.decimal :order_value
      t.integer :tracking_no
      t.text :special_instruction
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :orders
  end
end
