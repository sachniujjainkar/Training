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


 # puts "call to method2 with other object "
# other_s1.method2
