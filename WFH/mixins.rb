
# ruby does not support multiple inheritance directly.but mixins
# provide facility that eliminates the problem of multiple inheritance
# by adding property of such inheritance to the class.

module Calculations

    def factorial(n)
        (1..n).inject(:*)               
    end 

    def even_odd(n)
        if n.even?
            puts "It is Even number"
        else
            puts "It is odd number"
        end
    end 
    
end

module Numbers
    
    def prime(n)
        puts "That's not an integer." unless n.is_a? Integer
        is_prime = true
        for i in 2..n-1
            if n % i == 0
                is_prime = false
            end
        end
        if is_prime
            puts "#{n} is prime!"
        else
            puts "#{n} is not prime."
        end
    end

end

module Armstrong

def checkArmstrong
    print "Enter the number: "
    input_num = gets.chomp.to_i
    num = input_num
    check = 0 
    while (num > 0) do 
      rem = num % 10 
      num = num / 10 
      check = check + (rem * rem * rem)
    end
    if check == input_num
      print "#{input_num} is an armstrong number"
    else
      print "#{input_num} is not an armstrong number"
    end 
end
    
end

class Mixins
    include Calculations #you can add more modules in one class
end

class MixinsDerived < Mixins
    include Numbers,Armstrong
end

puts "Enter number for calculate Factorial : "
number=gets.to_i
obj=MixinsDerived.new
puts obj.factorial(number)
puts "Enter number for check it is even or odd : "
number1=gets.to_i
obj.even_odd(number1)
puts "Enter number for check prime or not  : "
number2=gets.to_i
obj.prime(number2)
number3=gets.to_i
obj.checkArmstrong