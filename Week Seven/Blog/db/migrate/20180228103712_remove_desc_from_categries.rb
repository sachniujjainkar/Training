class RemoveDescFromCategries < ActiveRecord::Migration[5.1]
  def change
    remove_column :categries, :desc, :text
  end
end
