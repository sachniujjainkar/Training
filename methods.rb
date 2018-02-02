def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"


class Methods
	def reading_charge
		
	end

	def self.return_statement
		puts "hello shubham"
	end

	# OR

	def Methods.return_statement1
		puts "hello shubham"
	end

end

Methods.return_statement1
Methods.return_statement