class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders, id: false, primary_key: :order_id do |t|
    	t.string :email
    	t.string :mobile_no
    	t.string :track_no
      t.timestamps
    end
  end
end
