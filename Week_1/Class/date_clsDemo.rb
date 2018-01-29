require 'date'

class Sample
	attr_accessor :name, :birthdate

	def initialize(name,birthdate)
		@name = name
		@birthdate = birthdate
	end

	def my_method
		puts "This is my method"
		puts "Name: #{name} "
		puts "DOB: #{birthdate}"
	end
end

obj=Sample.new('Neha',Date.new(1994,12,06))
obj.my_method

print "methods of obj are:"+obj.methods.to_s

puts "\nclass's instance_variables are.."+obj.instance_variables.to_s