class Singeletone
	@@obj = Singeletone.new
	public
	def self.getinstance
		return @@obj
	end
	def asin(a)
		@a =a
	end
	def get
		puts "a= #{@a}"
	end
	def demoprint
		puts "hello"
	end
	private
	def self.new
		super.new
	end
end

obj1 =Singeletone.getinstance
puts obj1.object_id

obj1.asin(10)
obj1.get
obj1.demoprint
obj2 =Singeletone.getinstance
puts obj2.object_id
obj2.get
 obj3 = Singeletone.new
  puts "obj3 #{obj3.object_id}"
	#obj3.demoprint
	puts obj2.class
	puts obj3.class
# puts boj4 = Singeletone.new(1)
# puts boj4.object_id
