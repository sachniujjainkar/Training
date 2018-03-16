class AddProductNameToLineitems < ActiveRecord::Migration[5.1]
  def change
    add_column :lineitems, :product_name, :string
  end
end
