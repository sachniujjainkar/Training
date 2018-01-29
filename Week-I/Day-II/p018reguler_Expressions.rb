
#1) Adhar Card Number(12 digit)
# eg. 1223-1234-1234-1234
puts "enter your adhar Card no:"
adhar_no=gets
=begin
if(adhar_no= ~ /\d{4}\-\d{4}\-\d{4}\-\d{4}/)
    puts "Valid adhar no..!"
else
  puts "Invalid adhar no..!"
end
=end
#......or.......
if adhar_no= ~ /(\d{4}\-){3}\d{4}/
    puts "Valid adhar no..!"
else
  puts "Invalid adhar no..!"
end


#2) Date of birth(22-2-1997)
puts "enter the birth Date:"
birth_date=gets
=begin
if(birth_date= ~/^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[12])-(19|20)[0-9][0-9]/)
    puts"Valid birth Date..!"
  else
      puts "Invalid birth Date...!"
  end
=end
  #......or........
  if(birth_date= ~/^(0\d|[12]\d|3[01])-(0\d|1\d)-(19|20)\d\d/)
      puts"Valid birth Date..!"
    else
        puts "Invalid birth Date...!"
    end


#3) email address(abcsa_bv.gf@gmail.com)
puts "Enter the email address:"
email_Id=gets
if email_Id=~/^[a-zA-Z]([a-zA-Z0-9]|\+|\.|\_|\%|\-)+@{1}[a-z]+\.[a-z]+$/
  puts "valid email_Id...!"
else
  puts "Invalid email_Id...!"

end


 #4)vehicle nameplate(MH-18 a-1234)(MH-18 ab-123)
 puts "Enter the vehicle no:"
 vehicle_no=gets
 if vehicle_no=~/^[A-Za-z]{2}(\.|\-|\s)\d{2}\s([A-Za-z]{1,2}(\.|\-|\s)\d{3,4})$/
   puts "Valid vehicle no...!"
 else
   puts "Invalid vehicle no...!"
 end

 #5) IP Number(172.018.001.001Range 0 to 255)
puts "Enter the IP no:"
ip_no=gets
=begin
if ip_no= ~/^((((25[0-5]){1})|((2[0-4][0-9]){1})|((1[0-9][0-9]){1})|(([0-9][0-9]){1})|(\d{1}))\.){3}(((25[0-5]){1})|((2[0-4][0-9]){1})|((1[0-9][0-9]){1})|(([0-9][0-9]){1})|(\d{1}))$/
  puts"You entered Valid IP...!"
else
  puts "You entered Invalid IP...!"
end
=end
if ip_no= ~/^((((25[0-5]){1})|((2[0-4]\d){1})|((1\d\d){1})|((\d\d){1})|(\d{1}))\.){3}(((25[0-5]){1})|((2[0-4]\d){1})|((1\d\d){1})|((\d\d){1})|(\d{1}))$/
  puts"You entered Valid IP...!"
else
  puts "You entered Invalid IP...!"
end

#6) Hsc seat number(S023269)

puts "Enter the HSC seat no:"
seat_no=gets
if seat_no=~/^s\d{6}$/
  puts "valid seat no...!"
else
  puts "Invalid seat no...!"
end

#7) Ssc seat number(D103157)
puts "Enter the SSC seat no:"
seat_no=gets
if seat_no=~/^D\d{6}$/
  puts "valid seat no...!"
else
  puts "Invalid seat no...!"
end



#8) URL Matching (http://www.google.com)
puts "Enter the URL:"
uurl=gets
if uurl= ~/^(http|ftp)\:\/\/www\.\w[a-zA-Z0-9]+(\.[a-zA-Z]+)$/
  puts"valid URL...!"
else
  puts "Invalid URL...!"
end
