l= lambda do |string| 
	if string=="try"
		return "nothing"
	else
		return "Do or do not"
	end
end
puts l.call("try")