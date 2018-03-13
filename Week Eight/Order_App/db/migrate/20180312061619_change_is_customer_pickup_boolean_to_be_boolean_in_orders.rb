class ChangeIsCustomerPickupBooleanToBeBooleanInOrders < ActiveRecord::Migration[5.1]
  def up
    change_column :orders, :is_customer_pickup_boolean, :boolean
  end

  def down
  	    change_column :orders, :is_customer_pickup_boolean, :string
  end
end
