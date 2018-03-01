class AddTagIdToPtagging < ActiveRecord::Migration[5.1]
  def change
    add_column :ptaggings, :tag_id, :integer
    add_column :ptaggings, :post_id, :integer
  end
end
