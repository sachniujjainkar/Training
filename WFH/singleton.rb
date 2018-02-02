# Hardware access
# Database connections
# Config files

# Eager initialization is easy to implement but it may cause resource and CPU time wastage. Use it only if cost of initializing a class is less in terms of resources or your program will always need the instance of class.
# By using Static block in Eager initialization we can provide exception handling and also can control over instance.
# Using synchronized we can create singleton class in multi-threading environment also but it can cause slow performance, so we can use Double check locking mechanism.
# Bill Pugh implementation is most widely used approach for singleton classes. Most developers prefer it because of its simplicity and advantages.

class Singleton
	# class << self

	def self.factorial(n)
		(1..n).inject(:*)				
	end	
	
	def self.even_odd(n)
		if n.even?
			puts "It is Even number"
		else
			puts "It is odd number"
		end
	end	

end

puts "Enter number to check given number is even or odd and calculate their factorial : "
number=gets.to_i

puts Singleton.factorial(number).object_id
puts Singleton.even_odd(number).object_id
