class RemoveSkuFromLineItems < ActiveRecord::Migration[5.1]
  def up
    remove_column :line_items, :sku, :integer
  end

  def down
    add_column :line_items, :sku, :string

  end
end
