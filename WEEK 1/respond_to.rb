obj=Object.new
if obj.respond_to?(:program)
	obj.program
else
	puts "Object does not undestand program message"
end

class SendObject
	def welcome(*args)
		"Welcome "+ args.join(' ')
	end

end
obj=SendObject.new
puts (obj.send(:welcome,"I am","Shubham"))

class SendObjectPrivate
  private
    def say_hello(name)
      "#{name} rocks!!"
    end
end
obj = SendObjectPrivate.new
puts obj.send( :say_hello, 'Shubham')