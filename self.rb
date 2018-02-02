puts self
# The class of the main object is Object.

class S
	puts"class s"
	puts self

	module M
		puts "Nested module S::M"
		puts self
	end

	puts 'Back in outer level of S'
	puts self

end

class S
	def m
		puts "Class S method m: "
		puts self
	end
end

s=S.new.m

object=Object.new
def object.show
	print "I am an object: "
	puts "here self inside a singleton method of mine : "
	puts self 
end
object.show
print 'and inspecting object from outside'
puts "to be sure it's the same object"
puts object

# Singleton methods - those attached to a particular object can be called by only one object. 
# When a singleton method is executed, self is the object that owns the method.

