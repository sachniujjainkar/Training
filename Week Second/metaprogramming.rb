class Office
	def self.addvar(var_name ,value)
		 class_variable_set(var_name,value)
	end

	def self.getvar(var_name)
		return class_variable_get(var_name)
	end

	def method_missing(m , *args ,&block)
		puts "The method #{m} is missing  with args #{args} and #{block.call}"
		#obj.send(:welcome , "Welcome")
	end
	def addMethod( m, &block )
 		self.class.send( :define_method, m , &block )
 		block.call
	end

end
o1=Office.new
Office.addvar( :@@var_name ,"Renuka")
#.addvar( :@@var_na ,"Renu")
puts (Office.getvar(:@@var_name))


o1.callmethod(10,20) {"Renuka"}
puts "Method is responded by class #{(o1.respond_to?:callmethod)}"
o1.addMethod( :xyz ) { puts("My name is #{@var_name}") } 
#o1.send(:addMethod)
puts "Hello"
o1.xyz

Office::const_set(:NUM,100)
puts (Office::const_get (:NUM))


