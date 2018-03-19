class ChangeContactToBeStringInUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :contact, :string
  end
end
