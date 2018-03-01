class AddPermalinkToPost < ActiveRecord::Migration[5.0]
  def self.up
    add_column :posts, :permalink, :string
    add_index :posts, :permalink
  end
  def self.down
    remove_column :posts, :permalink
  end
end