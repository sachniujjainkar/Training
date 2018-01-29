class Student
puts "Calling private method through send object"

  	 def say_hello(name)
    	p "Hello #{name}"
  	end

  	def method2(*args)
  		puts *args
  	end

  	def try
  		  puts "Just try for respond_to method check"
  	end

  	
end
obj = Student.new
obj.send(:say_hello,"Renu")
#puts (obj.send(:method2 ,renu','MCA', 2018)
if obj.respond_to?(:try)
	obj.send(:m1)