puts "Trick 1"

		a = -> { 1 + 1  }
		puts a.call

	puts "trick 2"
	
	def my_method (a,*b , **c)
		puts a
		puts *b
		puts **c
	end

my_method(1,2,3, a: 1  , b: 2 )


str1 ="enu"
str2 = "Renu"

puts str1 == str2

puts str1.eql? str2
puts str1.object_id #18380380
puts str2.object_id #18380360
	
	puts str1.equal?str2
puts str1 === str2