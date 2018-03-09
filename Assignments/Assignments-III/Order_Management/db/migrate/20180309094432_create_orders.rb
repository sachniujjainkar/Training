class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_no
      t.boolean :is_express_delivery
      t.boolean :is_custommer_Pickup
      t.date :delivery_date
      t.string :order_currency
      t.string :special_instruction
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
