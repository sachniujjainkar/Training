a=[1,2,3,4,5,6]

def mutate(arr)
	arr.pop
end

def not_mutate(arr)
	arr.select{ |i| i > 3 }
end


mutate(a)  #here last element get poped out

puts "Before mutate."
print a

puts "\n"
puts not_mutate(a)	#here it prints the number which are > 3.
puts "\nAfter mutate"
print a


puts "\n\nUse of include function here."
puts a.include?(3)

puts a.include?(6)


a=[1,2,[3,4,5],[6,7]]
print "\nresult of flatten : "+"#{a.flatten}"+"\n"



puts "Firse element="+a.first.to_s
print "Last element="+a.last.to_s+"\n"

b=[78,45 ,12,6,90,6]
print "b="+b.to_s

puts "\nresult:"
print b.to_s
puts "\n\nSorted array is:"+b.sort!.to_s
print "\nUsinhg !(bang) method result:\n"+b.to_s
