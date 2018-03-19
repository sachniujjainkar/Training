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
		puts @a
	end
	private
	def initialize(a)
		
		puts "hello #{a}"
	end 
	

end

obj1 =Singeletone.getinstance
puts obj1.object_id

obj1.asin(10)
obj1.get
obj2 =Singeletone.getinstance
puts obj2.object_id
obj2.get
#  puts boj3 = Singeletone.new(2)
#  puts boj3.object_id
# puts boj4 = Singeletone.new(1)
# puts boj4.object_id