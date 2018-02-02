class Box
	@@count=0
	
	def initialize(w,h)
		@width, @height = w,h
		@@count +=1
	end

	# def print_count
	# 	puts "Number of objects created is #{@@count}"
	# end

	#OR

	def self.print_count
		puts "Number of objects created is #{@@count}"
	end
end

box1=Box.new(10,20)
box2=Box.new(30,90)
# box1.print_count
# box2.print_count

Box.print_count
# Box.print_count
