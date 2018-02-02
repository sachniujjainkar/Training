
# Ruby Modules are similar to classes in that they hold a collection of methods, 
# constants, and other module and class definitions

module Geometry
	def diameter(radius)
		radius* 2
	end
end

# Unlike classes, 
# you cannot create objects based on modules nor can you subclass them;

class Sphere
	include Geometry
end

#include takes the name of a module, in the form of a constant, as in include Stuff.

class Circle
	include Geometry
end

# they allow you to share functionality between classes - 
# if a class mixes in a module, that module's instance methods become available as if they had been defined in the class. 
# They get mixed in.

c=Circle.new()
s=Sphere.new
puts s.diameter(3)
puts c.diameter(4)




# Remember that you can mix in more than one module in a class. 
# However, a class cannot inherit from more than one class.