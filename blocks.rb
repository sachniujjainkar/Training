def test
	puts "You are in method!"
	yield
	puts "you are again back to method"
	yield
end
test{ puts" I am in block"}

def test1
	yield 5
	puts "You are in the method"
	yield 100
	puts yield.class #it will return NilClass class
end

test1 {|i| puts "You are in the block #{i}"}

# block as argumnet

def test2(&block)
	block.call
	puts block.class #it will return Proc class
end
test2{ puts "Hello I am here"
}


END{puts "End block code"}
BEGIN{puts "BEGIN code block."}
puts "main block code"