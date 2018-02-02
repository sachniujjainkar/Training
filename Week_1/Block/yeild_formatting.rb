def double(n)
yield n

end

double(2) do |n|
puts n *= 2 
end


def print_list(array, first = 1)  # must be called with a block!
  counter = first
  array.each do |item|
    puts "#{yield counter} #{item}"
    counter = counter.next
  end
end

 list = ["Ruby","Python","Java"]  

 list2= ["alpha","beta","gamma","delta"]

 puts "-----------------"
puts "start with 1, no fancy formatting at all:"
print_list( list ) { |n| n }
puts "-----------------"

puts "start with 10, number in <angle brackets>:"
print_list( list, 10 ) { |n| "<#{n}>"}
puts "-----------------"

puts 'start with "A)", then "B)" and so on:'
print_list( list2, "A" ) { |n| "#{n})"}
puts "-----------------"
