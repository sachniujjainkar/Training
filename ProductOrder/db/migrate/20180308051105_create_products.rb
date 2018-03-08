class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :quantity
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.decimal :weight
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
