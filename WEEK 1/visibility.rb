class Visibility

	#By default, all the methods you define will be public, 
	#unless you use the private or protected keyword/method to make them not public. 
	
	def public_method
		puts "I am public method"
	end

	# Private methods can only be used within the class definition; 
	# they’re for internal usage.

	# The only way to have external access 
	# to a private method is to call it within a public method.


	def method_name
		private_method
	end

	

	private
 
 	def private_method
 		puts "I am from private method"
 	end

 	# a protected method is similar to a private method, 
 	# with the addition that it can be called with, or without, 
 	# an explicit receiver, but that receiver is always self (it’s defining class) 
 	# or an object that inherits from self (ex: is_a?(self)).

 	protected

 	def protected_method
 		puts "I am from protected method"
 	end
end

class ProtectedClass < Visibility
	def call_protected_method
		private_method
	end
end

object=Visibility.new
object.public_method
object2=Visibility.new
#object2.private_method  #Gives us NoMethodError
object2.method_name
#object2.call_protected_method #no method error
object3=ProtectedClass.new
object3.call_protected_method
# object3.protected_method #Gives us NoMethodError