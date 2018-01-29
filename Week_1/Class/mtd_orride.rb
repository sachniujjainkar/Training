#here in this code we achive overriding of initialize method.
#1 initialize method and it behaves differently by changing the arguments

class Rectangle

	def initialize(*args)
		if args.size < 2 || args.size > 3 
		 	puts 'Sorry this method takes either 2 or 3 arguments.'
		
		else
			puts 'Correct no of argument'
		end
			
	end

end

Rectangle.new([10,33],4,10)				#overriding of initialize method here
Rectangle.new([10,33],[14,13])
Rectangle.new(1,2,3,4)
