class String
	def self.add_new_method(name)
		send(:define_method,name){
			puts "you created method #{name},and you are in it now!!!"
		}
	end
end

String.add_new_method("Hello")

"string".Hello