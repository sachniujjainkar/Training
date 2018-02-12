class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.belongs_to :user , index: true
    	t.string 				:coursename          
    	t.integer               :payment 
    	t.date                  :birthdate 
    	t.string		        :previous_course_name
    	t.string                :previous_course_year 
    	t.string		        :payment_type

      t.timestamps
    end
  end
end
