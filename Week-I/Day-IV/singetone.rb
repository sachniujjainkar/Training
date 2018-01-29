class Singeletone
	@@obj = Singeletone.new
	public
		def self.getinstance
			puts @@obj.class
			return @@obj
		end
		def asin(a)
			@a =a
		end
		def display
			puts "a= #{@a}"
		end
	private
		def self.new
			super.new
		end
end

obj1 =Singeletone.getinstance
puts "obj1 #{obj1.object_id}"

obj1.asin(10)
obj1.display
obj2 =Singeletone.getinstance
puts "obj2 #{obj2.object_id}"
obj2.display
#obj3 = Singeletone.new				# undefined method `new' for #<Singeletone:0x007fe75103aa08> (NoMethodError)
obj3 = Singeletone.getinstance
puts "obj3 #{obj3.object_id}"
puts obj1.class
puts obj2.class
puts obj3.class
puts obj1.inspect
puts obj2.inspect
puts obj3.inspect

puts "Hello"


# puts boj4 = Singeletone.new(1)
# puts boj4.object_id
