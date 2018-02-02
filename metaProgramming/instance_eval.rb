class InstanceEval
	
	def initialize(val)
		@val = val
	end

end
k=InstanceEval.new("Hello")
puts k.instance_eval("@val")
