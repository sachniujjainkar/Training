var1="Shubham"
puts "#{var1} with object id = #{var1.object_id}"
var1="Shubham"
puts "#{var1} with object id = #{var1.object_id}"

# While strings represent data that can change, symbols represent unique values, which are static.

var2= :shubham #symbols can potentially save a good bit of memory depending on the application. It is also faster to compare symbols for equality since they are the same object.
puts "#{var2} with object id = #{var2.object_id}"
var3= :shubham
puts "#{var2} with object id = #{var2.object_id}"


=begin
	if you do puts "Hello!" 10 times then 10 actual string objects will be created (and then discarded,
	because they’re not being used any longer).
	On the other hand, if you’d use a symbol for this and do puts :hello 10 times,
	then only one single object will be created, and re-used.
=end
