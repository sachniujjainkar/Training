class Demo
	def test (&block)
		puts "Hello First line"
		yield 
		 block.call
	end
end

	d1=Demo.new
d1.test{puts "In block try 1"}
d1.test{puts ("In block try 2")}

# BEGIN{puts "In begin block"}
# 	puts "In main block 3"
# END{puts "In end block"}