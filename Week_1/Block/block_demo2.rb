def my_mtd(&block)
	puts block	#here it will print the path where the block is present
	block.call
end

my_mtd {puts "Helllo!"}

def mtd(&var)
	#puts var
	var.call
end

mtd do
	puts "hi var"
end

#demo of return value.
puts "-----return value------"
def my_method
	value=yield
	puts "value is : #{value}"
end

my_method do
		2
	end