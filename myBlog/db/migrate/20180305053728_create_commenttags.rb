class CreateCommenttags < ActiveRecord::Migration[5.1]
  def change
    create_table :commenttags do |t|
      t.string :name

      t.timestamps
    end
  end
end
