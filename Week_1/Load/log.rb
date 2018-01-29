module Log
	def addition
		puts "Addition = #{10+40} " 

	end

end


class TestAddition
	extend Log

end

class T1
	include Log
	
end


puts tc=TestAddition.addition

puts obj=T1.new.addition

