=begin
We do not declare the return type; 
a method returns the value of the last statement executed in the method.
=end

class Methods


	def simple_method
		puts "Hello shubham"
	end

	# def addition number
	# 	number+number
	# end
				#OR
	def addition(number)
		puts number + number		
	end

	# default values for a method's arguments-values that will be used if 
	# the caller doesn't pass them explicitly.

	def method_args(arg1="Hello",arg2="I Am" , arg3="here!!!")
		puts "#{arg1},#{arg2},#{arg3}."
	end

	def old_method
		puts "Implementing old value"	
	end

	alias new_method old_method

	# the aliased name will still invoke the original implementation.
	# Local variables, instance variables, class variables, and constants may not be aliased.

	def old_method
		puts "improved old method"
	end

	def number_of_parameter(*n_argumnets)
		puts n_argumnets.inspect
	end

	# The asterisk (called the splat argument) 
	# is actually taking all arguments you 
	# send to the method and assigning them to an array

	# Ruby bang(!) methods that modify an object
	def bang_method
		name = "SHUBHAM"
		puts name
		puts name.downcase!
		puts name	#it returns modified value by bang method
	end
	

end

object=Methods.new
object.simple_method
object.addition(4)
object.method_args("shubham")
object.number_of_parameter(1,5,"shubham",[],{})
object.bang_method
