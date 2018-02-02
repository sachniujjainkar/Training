def method_name
	puts "Hello"

	yield

	puts "I am here"
end

method_name{puts "shubham"}