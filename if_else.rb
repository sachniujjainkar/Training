class IfElse

	def ifElse(n)
		if n <= 15
			puts "your not old enough fot his site"
		else
			puts "your are eligible"
		end
	end
end
puts"Enter your age: "
number=gets.to_i
object=IfElse.new
object.ifElse(number)