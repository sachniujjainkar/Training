puts "Eval Magic"

puts "#{1+2}"
puts (eval("1+2"))
puts (eval("1"))

#puts "Enter the methodname"
#methodname = gets().chomp()
#exp="'Hello'."<<methodname
#puts (eval(exp))

class Sample
	def initialize
		@a=10
	end
end

obj=Sample.new
p(obj.instance_eval{@a})
p(obj.instance_eval("@a"))


module X
end

class Y
	include X
	#puts "Parameter passe => #{a}"
end

X.module_eval{define_method(:m1){puts("Hello")}}
Y.class_eval{define_method(:m2){puts("Hello in class")}}
Y.class_eval("@@a=1")
ob1=Y.new
ob1.m1
ob1.m2
#p1= ob1.@@a
#puts p
