$global_variable=10 #global variable
class NamingConvention

	@@my_variable=0 # class variable
	def initialize(id,my_name) #constructor
		@id, @my_name = id,my_name #instance variable
		@@my_variable="I am here"
	end

	def class_variable
		puts @@my_variable 
	end

	def display_instance_variable 
		puts "id: #{@id}"
		puts "my name: #{@my_name}"
	end

	def print_global_variable
		puts "Global variable is #{$global_variable}" # #{}-interpolation operator which evaluates the value of any variables and constants.
	end

	ConstantVariable=5  #Constant Starts from CApital letter 
	#ConstantVariable=6	#warning: already initialized constant NamingConvention::ConstantVariable

	def local_variable
		p=5 #local variable.
		puts p
	end
end
class Class2 < NamingConvention
	def initialize()
		@@my_variable="He is there"
	end		
end

class Class3 < Class2
	def initialize()
		@@my_variable="No one is there!!" 
	end
end
obj1=NamingConvention.new(103,"Karan") #object creation of class
obj1.local_variable #access the value from method in class in this way of making the instance of that class and access it.
obj1.print_global_variable
obj2=NamingConvention.new(101,"shubham")
obj3=NamingConvention.new(102,"Rajesh")
obj1.display_instance_variable
obj2.display_instance_variable
obj3.display_instance_variable
obj1.class_variable

object=Class2.new
object.class_variable
obj1.class_variable
obj2.class_variable

object2=Class3.new.class_variable
object.class_variable #class variable modified value  recently inherited class's class variable 
