class MyProc
	def method_sample nm1,nm2
		puts "start of method"
		nm1.call
		nm2.call
		puts "End of method"
	end

	# call1=lambda{puts "first proc"}
	# call2=lambda{puts "second proc"}

end

call1=Proc.new{puts "first proc"}
call2=Proc.new{puts "second proc"}
# call1=lambda {puts "first proc"}
#  call2=lambda { puts "second proc"}
obj=MyProc.new
obj.method_sample(call1,call2)