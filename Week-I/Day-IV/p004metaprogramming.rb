#..............obj.respond_to?   &   obj.send.........
class Student
 def say_hello(name)
   p "Hello #{name}"
 end
end

obj = Student.new
if obj.respond_to?(:say_hello)
  obj.send(:say_hello,'Sachin')
  p obj.method(:object_id).call
else
  puts "method not available "
end


#................class_eval    &    instance_eval............
class Person
  def initialize
    @aVar = "Hello world"
   end
end

Person.class_eval do
  def say_hello
   puts "Hello...!"
  end
end

Person.instance_eval do
  def human?
    true
  end
end


p1 = Person.new
p1.say_hello # "Hello!"
puts p1.instance_eval { @aVar }
puts p1.instance_eval( "@aVar" )
puts Person.human? # true

#Person.say_hello  #undefined method `say_hello' for Person:Class (NoMethodError)
#puts p1.human?     #undefined method `human?' for #<Person:0x007f93339006c8> (NoMethodError)

p2 = Person.new.say_hello   #Hello...!
