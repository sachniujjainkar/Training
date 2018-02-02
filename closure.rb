arr=[1,2,3,4,5]

arr.each do |element|
	puts element
end

arr.each_index do |index|
	puts "The element at #{index} is #{arr[index]}"
	puts "The square of #{arr[index]} is #{arr[index]**2}"
	puts "The cube #{arr[index]} is #{arr[index]**3}"
ends