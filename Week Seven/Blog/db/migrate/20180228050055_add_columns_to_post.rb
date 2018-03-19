class AddColumnsToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :category_id, :string
  end
end
