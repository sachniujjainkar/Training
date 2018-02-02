def show_numbers numbers=10
	i=0
	while i < numbers
		yield i
		i += 1
	end
end

show_numbers do |number|
	puts "the number id #{number}"
end
