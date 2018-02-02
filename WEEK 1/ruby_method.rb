
#Singleton method,the self keyword also refers to the class itself.
# Singleton methods - those attached to a particular object can be called by only one object.
class SingletonMethods
	puts self 
	#In a class definition (but not in an instance method), 
	# the self keyword refers to the class itself.

	def self.about
	#Singleton method,the self keyword also refers to the class itself.	
		puts "Enter your name: "
		name=gets.chomp
		print "Name is #{name}"
	end
end
SingletonMethods.about #way of calling singleton method no need to create an object 

class InstanceMethod
	#In instance methods, the self keyword refers to instances of the class.
	def enter_name
		self
	end
end
puts InstanceMethod.new.enter_name # an instance of the class

class ClassMethods
	@s=self
	def ClassMethods.method
		puts "Class method of class #{@s}"	
		puts self #return class name
	end
end
ClassMethods.method