class CreateAddresses < ActiveRecord::Migration[5.1]
  def up
    create_table :addresses do |t|
      t.integer :user_id
      t.text :address_body
      t.string :city
      t.string :state
      t.integer :postal_code

      t.timestamps
    end
  end

  def down
    
    drop_table :addresses
  end
end
