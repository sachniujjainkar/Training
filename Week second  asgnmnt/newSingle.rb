class SingleEg
	 def method1
	 	 puts 1
	 end
end

s1=SingleEg.new
def s1.method2
	puts 2 
 end

puts s1.method1
puts "object id of 1 object #{s1.object_id}"
puts "puts object id of method 1 #{s1.method1.object_id}"
puts s1.method2
puts "puts object id of method 2 #{s1.method2.object_id}"

other_s1=SingleEg.new
puts "object id of 3 object #{other_s1.object_id}"

puts "call to method with other object "
other_s1.method1
puts "puts object id of method 1 by other object #{s1.method2.object_id}"

puts "it gives the error when method2 call by ther object"
# puts "call to method2 with other object "
# other_s1.method2

puts SingleEg.method_defined? :method1
puts SingleEg.method_defined? :method2

singletoneclass1 = 
(class << s1
	self
end	)

puts singletoneclass1.method_defined? :method1
puts singletoneclass1.method_defined? :method2

singletoneclass2 = 
(class << other_s1
	self
end	)

puts singletoneclass2.method_defined? :method1
puts singletoneclass2.method_defined? :method2

class << s1
	def method4
		puts "Hello method4"
	end
end	

s1.method4