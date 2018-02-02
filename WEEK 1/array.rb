array_sample=["sprite","mountain dew","fenta","slice"]

puts array_sample
puts array_sample.inspect
puts array_sample[-1]

string_one="Your favorite drink is "

puts string_one +array_sample[1]

array=[1212,321,45,78,1320]

puts array.sort.inspect
puts array.sort.to_s
puts array.first.inspect
puts array_sample.sort.inspect
puts array.sort.first
puts array_sample.last

array_sample.each do |loc| 
	puts 'I love ' +loc+ '!'
	puts "Don't you?"
end

def mtdarr
	12.times do |num|
		square=num*num
		return num,square if num > 10
	end
end

num,square=mtdarr #parallel assignment
puts num
puts square

ENV.each{ |k,v| puts "#{k}: #{v}" } #ENV variable to store configuration such as path.

f=ARGV[1]
puts f