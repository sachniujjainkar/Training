class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.decimal :price
      t.decimal :quantity
      t.decimal :weight
      t.decimal :width
      t.decimal :height
      t.decimal :depth
      t.string :image

      t.timestamps
    end
  end
end
