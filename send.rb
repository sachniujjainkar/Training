class Student

 def say_hello(name)
   p "Hello #{name}"
 end
end

obj = Student.new
obj.send(:say_hello ,'Reuaka')