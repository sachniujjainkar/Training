class C1
	@temp=10
	def initialize
		#@temp=20
		puts "in initialize #{@temp.object_id}"
	end

	def self.print

puts "in print method #{@temp}"
	end


	puts "in class1 #{@temp.object_id}"
	puts "in class1 val #{@temp}"
	puts "in class2 #{@temp.object_id}"
	puts "in class2 val #{@temp}"
	def show; 
		puts "in method #{@temp}"
		puts "in method #{@temp.object_id}"
	end
end
	a = C1.new
	C1.print
	a.show
