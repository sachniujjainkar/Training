class CreateCommenttaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :commenttaggings do |t|
      t.belongs_to :commenttag, foreign_key: true
      t.belongs_to :comment, foreign_key: true

      t.timestamps
    end
  end
end
