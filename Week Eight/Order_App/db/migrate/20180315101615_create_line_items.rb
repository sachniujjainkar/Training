class CreateLineItems < ActiveRecord::Migration[5.1]
  def up
    create_table :line_items do |t|
      t.integer :sku
      t.decimal :quantity
      t.decimal :price
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :line_items
  end
end
