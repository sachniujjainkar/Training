class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.string :contact_no
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
