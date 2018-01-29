#check whether inputed number is palindrome or not

puts "Enter number to check palindrome or not."
num = gets.to_i

def palindrome(num)
  rev=0
  r=num
  while r != 0
    i=r%10
    rev=rev*10+i
    r /= 10
  end

  #unless execute code if condition is false
  unless rev == num
    puts "Sorry but #{num} is not a Palindrome"
  else
    puts "#{num} is a palindrome"
  end
end

palindrome(num)
