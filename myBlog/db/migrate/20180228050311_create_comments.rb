class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :postcommenter
      t.text :postcomment
      t.integer :post_id

      t.timestamps
    end
  end
end
