class CreateCommentTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_taggings do |t|
      t.references :tag, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
