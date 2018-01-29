class Proc_try
	
	puts "Revision of lambda and proc and block"
	p = Proc.new{ p = Proc.new { puts "Hello World" }}
	p.call
	p.call{8} # Dos'nt check the arguments
	puts p.class
	# puts p

	def proc_test(temp1,temp2)
   		temp1.call
   		temp2.call
	end
end
r1 = Proc.new{ puts ("This is First")}
r2 = Proc.new{ puts ("This is Second")}

p1=Proc_try.new
p1.proc_test(r1,r2)