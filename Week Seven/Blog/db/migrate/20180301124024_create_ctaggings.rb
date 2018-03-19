class CreateCtaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :ctaggings do |t|

      t.timestamps
    end
  end
end
