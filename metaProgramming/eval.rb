def zen
	42
end

eval("def zen;41;end")


puts zen

def get_binding
	binding
end

class Eval
	def get_binding
		binding
	end
end

puts eval("self",get_binding)
puts eval("self",Eval.new.get_binding)