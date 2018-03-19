class ToChangeColumnTypeIPost < ActiveRecord::Migration[5.1]
  def up
  	change_column :posts, :category_id, :integer
  end

  def down
  	change_column :posts, :category_id, :string
  end
end
