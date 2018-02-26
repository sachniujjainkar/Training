class Perfect
	
	def checkPerfectNumber
	    i=1
	    sum=0
	    puts "Enter the number"
	    n = gets.chomp.to_i
	    while i < n do 
	      sum = (sum + i) if n % i == 0
	      i = i + 1
	    end
	    if sum == n
	      puts "Given number is perfect number"
	    else
	      puts "Given number is not a perfect number"
	    end
  	end

end

p=Perfect.new
p.checkPerfectNumber