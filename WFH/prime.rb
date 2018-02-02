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

prime