class CreateCtaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :ctaggings do |t|
      t.integer :tag_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
