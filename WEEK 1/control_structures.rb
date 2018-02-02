class ControlStructures

	def even_or_odd(val)
	   if val % 2 == 0
	      puts "#{val} is even"
	   end
	   
	   if val % 2 == 1
	      puts "#{val} is odd"
	   end
	end	
end
puts"Enter the number : "
n=gets.to_i
ControlStructures.new.even_or_odd(n)
# puts ControlStructures.new.until_loop