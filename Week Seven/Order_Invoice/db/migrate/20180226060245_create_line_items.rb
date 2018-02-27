class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
    	t.string :sku
    	t.string :name
    	t.string :quantity
    	t.integer :price
      t.timestamps
    end
  end
end
