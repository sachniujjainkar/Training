class AddDetailsToRegister < ActiveRecord::Migration[5.1]
  def change
    add_column :registers, :name, :string
    add_column :registers, :cno, :string
    add_column :registers, :email, :string
  end
end
