class AddTagIdToCtagging < ActiveRecord::Migration[5.1]
  def change
    add_column :ctaggings, :tag_id, :integer
    add_column :ctaggings, :comment_id, :integer
  end
end
