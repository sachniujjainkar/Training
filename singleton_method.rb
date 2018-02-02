
class SingletonMethod
	def show
		puts " in singleton method"
		puts self
	end
end
object=SingletonMethod.new
object.show
puts object.object_id
ob2 = SingletonMethod.new
puts ob2.object_id

def object.show1
	puts "Hello i am in singleton method of class SingltonMethod "
end

def object.get_input
	puts "Enter your name: "
	input=gets.chomp
	puts "your name = #{input}"
end

object.get_input