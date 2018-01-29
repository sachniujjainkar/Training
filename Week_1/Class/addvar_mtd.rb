class Employee

	def self.addvar(aVar,aValue)
		class_variable_set(aVar,aValue)
	end

	def self.getvar(aVar)
		return class_variable_get(aVar)
	end

	def addMethod(m,&block)
		self.class.send(:define_method,m,&block)
	end	

end



#..........using class_eval we can write this singletone method.........


Employee.addvar(:@@name,'Sneha')
puts(Employee.getvar(:@@name))

Employee.addvar(:@@age,22)
puts(Employee.getvar(:@@age))

#to obtain a list of class variable using class_variable
puts "Just list of the class variables..."
p(Employee.class_variables)


ob=Employee.new
ob.instance_variable_set("@skill","Smart worker")
puts(ob.instance_variable_get("@skill"))


ob.addMethod(:xyz){puts("My skill is #{@skill}")}
ob.xyz		

ob2=Employee.new
ob2.instance_variable_set("@skill","leadership")
ob2.xyz





