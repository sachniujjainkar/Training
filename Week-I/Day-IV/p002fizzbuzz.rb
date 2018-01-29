=begin
  "Write a program that prints the numbers from 1 to 100\.
   But for multiples of three print “Fizz” instead of the
   number and for the multiples of five print “Buzz”.
   For numbers which are multiples of both three and five print “FizzBuzz".
=end

=begin
   1.upto(100) do |i|
    if i % 15 == 0
      puts " FizzBuzz"
    elsif i % 5 == 0
      puts " Buzz"
    elsif i % 3 == 0
      puts " Fizz"
    else
      puts " #{i}"
    end
  end
=end
=begin
  #An alternative
def fizzbuff?(i)
  return 'FizzBuff' if i % 15 == 0
  return 'Buff' if i % 5 == 0
  return 'Fizz' if i % 3 == 0
  return i
end
  (1..100).each {|i|
    puts fizzbuff?(i)
  }
=end

=begin
#...Using switch...

def fizzbuff?(i)
  case
  when  i % 15 == 0 then return 'FizzBuff'
  when i % 5 == 0 then return 'Buzz'
  when i % 3 == 0 then return 'Fizz'
  else return i
  end
end
(1..100).each { |i| puts fizzbuff?(i)}
=end


# return Array for printing
def fizzbuzz?(number)
  return 'Fizzbuzz' if number % 15 == 0
  return 'Buzz' if number % 5 == 0
  return 'Fizz' if number % 3 == 0
  number
end

p =(1..100).map { |i| fizzbuzz?(i) }
puts p
