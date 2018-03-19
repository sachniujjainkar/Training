class AddUserToRegisters < ActiveRecord::Migration[5.1]
  def change
    add_reference :registers, :user, foreign_key: true
  end
end
