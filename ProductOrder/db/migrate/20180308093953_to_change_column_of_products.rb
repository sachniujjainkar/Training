class ToChangeColumnOfProducts < ActiveRecord::Migration[5.0]
  def up
    change_column :products, :height, :decimal, precision: 8, scale: 2
    change_column :products, :width, :decimal, precision: 8, scale: 2
    change_column :products, :length, :decimal, precision: 8, scale: 2
    change_column :products, :weight, :decimal, precision: 8, scale: 2
    change_column :products, :price, :decimal, precision: 8, scale: 2
  end

  def down
    change_column :products, :price, :decimal
    change_column :products, :weight, :decimal
    change_column :products, :length, :decimal
    change_column :products, :width, :decimal
    change_column :products, :height, :decimal
  end
end
