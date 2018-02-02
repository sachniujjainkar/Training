class ForLoop

	def for_loop(n)
		
		for i in 0..n #inclusive range
			puts i
		end

		for i in 0...n #exclusive range
			puts i
		end
	
	end

end
print "Enter number ? "
s=gets.to_i
ForLoop.new.for_loop(s)
