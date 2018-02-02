s1=1..5
s2= 3
s3=s2

if s1==s2
	puts "equal"
else
	puts "not equal"
end

if s1===s2
	puts "equal"
else
	puts "not equal"
end

if s1.eql?(s2)
	puts "equal"
else
	puts "not equal"
end

if s3.equal?(s2)
	puts "equal"
else
	puts "not equal"
end