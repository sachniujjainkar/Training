class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :lineitems, :product_name, :name
  end
end
