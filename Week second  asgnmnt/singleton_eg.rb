module Numbers
    
    def prime
        puts"Enter number prime or not : "
        number=gets.to_i
        puts "That's not an integer." unless number.is_a? Integer
        is_prime = true
        for i in 2..number-1
            if number % i == 0
                is_prime = false
            end
        end
        if is_prime
            puts "#{number} is prime!"
        else
            puts "#{number} is not prime."
        end
    end

end

class SingletonEg
    def SingletonEg.checkArmstrong
        print "Enter the number to armstrong or not: "
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
object=SingletonEg.new
object2=SingletonEg.new
def object.even_odd
        puts"Enter number even or not : "
        number=gets.to_i
        if number.even?
            puts "It is Even number"
        else
            puts "It is odd number"
        end
end 

class << object
    include Numbers
    def factorial
        puts"Enter number for calculate factorial : "
        number=gets.to_i
        (1..number).inject(:*)               
    end

    def addition
        puts "Enter number for square it : "
        number=gets.chomp.to_i
        puts number*number
    end
end


puts SingletonEg.checkArmstrong
puts
puts object.even_odd
puts 
puts object.factorial
object.addition
# puts object2.factorial # it will give us error bcoz only one object can call it bcoz its a singleton
puts
puts object.prime