#yield without parameter..

def my_mtd
	puts "reached the top"
	yield
	puts "reached the bottom"

end

my_mtd do 
	
	puts "reached yield" 

end

#yield with parameters..
puts "----now yeild with parameters-----"

def my_mtd
	yield("Neha",24)
end

my_mtd do |name,age|
	puts "#{name} is #{age} years old."
end