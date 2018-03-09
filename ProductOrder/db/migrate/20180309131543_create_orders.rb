class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :order_no
      t.boolean :is_express_delivery
      t.boolean :is_customer_pickup
      t.date :delivery_date
      t.string :order_currency
      t.string :special_instruction
      t.integer :user_id
      t.integer :address_id

      t.timestamps
    end
  end
end
