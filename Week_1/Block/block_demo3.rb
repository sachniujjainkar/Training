def my_map(array)
	new_array=[]

	for element in array
		new_array.push yield element
	end

	puts new_array
end

	my_map([1,2,3,4,5,6,7,8,9,10]) do |number|
		number*2
	end