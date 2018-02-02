#validation on user data using REgular expression.

puts "\nUser information."

# eg:Name Lastname
puts "Enter your full name:"
name=gets.chomp
n1=name
if  n1= ~/[A-Z][a-zA-Z][^&~;$^%{}?]{1,20}$/
else
  puts "Invalid name,please try again."
end

# eg:8888632228
puts "Enter mobile number."
mob=gets.chomp
re=mob
if re= ~/\b^([0-9]{10})$\b/
else
  puts "Invalid phone number,please try again"
end

# eg:1234-1234-5678-1234
puts "Enter your Adhar card no."
adhar_no=gets.chomp
re_adhar=adhar_no
if(re_adhar= ~ /\d{4}\-\d{4}\-\d{4}\-\d{4}/)
else
  puts "Invalid adhar number,please try again."
end

# eg:user.name@gmail.com
puts "Enter email_id:"
e_id=gets.chomp
if !!e_id.match(/\A[\w.+-]+@\w+\.\w+\z/)
else
  puts "Invalid email id,please try again."
end

# eg:www.google.com
puts "Enter the URL:"
url=gets
re_url=url
if re_url= ~/^(http|ftp)\:\/\/[a-zA-Z0-9]+(\.[a-zA-Z]+)$/
else
  puts "Invalid URL...!"
end

#storing your data in abc.txt file.
file=File.open("abc.txt","r+") do |file|
  file.puts "#{name}"
  file.puts "#{mob}"
  file.puts "#{adhar_no}"
  file.puts "#{e_id}"
  file.puts "#{url}"
end

puts "Your data successfully saved in abc.txt file."

puts "\n-----------------Menu------------------"
puts "1.Count no of lines in your file."
puts "2.Count no of words in your file."
#end
puts "\nEnter your choice:"
data = gets.chomp

#count the number of lines and frequency of words from your data file.
case data
when "1"

  line_no=0
  file=File.open("abc.txt",'r')
  file.each_line{|line|
    line.strip!
    line_no += 1
  }
  puts "Total no of lines are: #{line_no}"

when "2"

frequency=Hash.new(0)

input_file=File.open('abc.txt','r')
puts "Words in file are:"
input_file.read.downcase.scan(/\b[a-z0-9\@]{3,16}\b/) {|word| frequency[word] = frequency[word]+1}
frequency.keys.sort.each{|key| print key, ' => ',frequency[key], "\n"}
puts "succcessfull..."
exit

end
