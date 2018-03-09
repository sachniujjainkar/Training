class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.string :contact
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
