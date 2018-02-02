def prime(n)
        puts "That's not an integer." unless n.is_a? Integer
        is_prime = true
        for i in 2..n-1
            if n % i == 0
                is_prime = false
            end
        end
        unless !is_prime
            puts "#{n} is prime!"
        else
            puts "#{n} is not prime."
        end
end
puts "Enter number : "
number=gets.to_i
prime(number)