class Employee
	def initialize(name,salary)
		@name=name
		@salary=salary
	end

	def designation
		puts 'Intern'
	end

	def display
		puts "I am #{@name} and my salary is #{@salary}"
	end
end


obj=Employee.new('Jay','45000')
puts "Object id is #{obj.object_id}"

if obj.respond_to?("trainer")
	obj.trainer
else
		puts "sorry, obj is not Trainer."
end

obj.designation
obj.display

obj1=obj
puts "object 2nd\'s id is #{obj1.object_id}"
obj1.display

obj=nil
obj.display

obj1.display
obj1=nil
obj1.display

 puts obj.object_id.equal?(obj1.object_id)
	puts "equals..."

puts "\n "
puts obj.eql?(obj1)

puts obj==obj1

puts obj===obj1

puts "\n"
a=12
puts a.object_id
#Id of integer is (no*2)+1
a1=3
puts a1.object_id
puts a==a1
puts a===a1
puts a.object_id==a1.object_id
puts a.object_id.eql?(a1.object_id)
puts a.object_id.equal?(a1.object_id)


puts "\n"
a='str3'
puts a.object_id
b='str3'
puts b.object_id
puts a==b
puts a===b
puts a.eql?(b)
puts a.equal?(b)


puts "\n"
puts 1==1.0
puts 1===1.0
puts 1.eql?1.0
puts 1.equal?1.0
