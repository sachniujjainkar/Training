class CreateTtags < ActiveRecord::Migration[5.1]
  def change
    create_table :ttags do |t|
      t.string :name

      t.timestamps
    end
  end
end
