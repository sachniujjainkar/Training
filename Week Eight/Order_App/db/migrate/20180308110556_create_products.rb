class CreateProducts < ActiveRecord::Migration[5.1]
  def up
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.integer :quantity
      t.decimal :length 
      t.decimal :width
      t.decimal :height
      t.decimal :weight
      t.decimal :cost_price
      t.string :storage_type
      t.string :prduct_image

      t.timestamps
    end
  end

  def down
    
  end
end
