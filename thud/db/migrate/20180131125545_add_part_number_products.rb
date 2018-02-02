class AddPartNumberProducts < ActiveRecord::Migration[5.1]
  def change
  	create_table :products, :options => "ENGINE=BLACKHOLE" do |t|
  		t.string :name, :null =>false
  	end
  end
end
