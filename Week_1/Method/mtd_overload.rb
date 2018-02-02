class MyClass
	def sayHello
		return "Hello from MyClass"
	end

	def sayGoodbye
		return "Goodbye from MyClass"
	end

end

class MyOtherClass < MyClass
	def sayHello
		return "Hello from MyOtherClass"
	end

	def sayGoodbye
		puts "\nHere because of super.. it preffers to both class method"
		return super << " and also from MyOtherClass"				#use of super and hence both method return here
	end

	def to_s
		return "\nI am instance of the #{self.class} class"
	end

end

puts "object of MyClass created here..."
obj1=MyClass.new
puts obj1.sayHello
puts obj1.sayGoodbye
puts obj1

puts "\nObject of MyOtherClass created here..."
obj=MyOtherClass.new
puts obj.sayHello
puts obj.sayGoodbye
puts obj
