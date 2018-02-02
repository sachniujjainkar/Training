lam=lambda { |x| puts x  }
lam.call(2)
# lam.call(1,2) wrong number of argumnets.

proc=Proc.new{|x| puts x}
proc.call #without argumnet proc will give us nil
proc.call(2)
proc.call(1,3,5,7) # its doesnt gives any error and extra argument has been ignore it

def lambda_test
	lam=lambda{return}
	lam.call
	puts lam.class
	puts "Hello world"
end

lambda_test

def proc_test
	proc=Proc.new{return}
	proc.call
	puts "hello shubham"
end

proc_test
