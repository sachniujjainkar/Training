# p 1) Adhar Card Number(12 digit)
# eg. 1223-1234-1234-1234
puts "enter your adhar Card no:"
adhar_no=gets

if(adhar_no= ~ /\d{4}\-\d{4}\-\d{4}\-\d{4}/)
    puts "Valid adhar no..!"
else
  puts "Invalid adhar no..!"
end

#......or.......
if(adhar_no= ~ /(\d{4}\-){3}\d{4}/)
    puts "Valid adhar no..!"
else
  puts "Invalid adhar no..!"
end


#2) Date of birth(22-2-1997)
puts "enter the birth Date:"
birth_date=gets
if(birth_date= ~/^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[12])-(19|20)[0-9][0-9]/)
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
 if vehicle_no=~/^[A-Z]{2}(\.|\-|\s)\d{2}\s([A-Z]{1,2}(\.|\-|\s)\d{4})$/
   puts "Valid vehicle no...!"
 else
   puts "Invalid vehicle no...!"
 end



# 6) Hsc seat number(S023269)

puts "Enter the seat no:"
seat_no=gets
if seat_no=~/^s\d{6}$/
  puts "valid seat no...!"
else
  puts "Invalid seat no...!"
end

# 7) Ssc seat number(D103157)
puts "Enter the seat no:"
seat_no=gets
if seat_no=~/^D\d{6}$/
  puts "valid seat no...!"
else
  puts "Invalid seat no...!"
end



#8) URL Matching (http://www.google.com)
puts "Enter the URL:"
uurl=gets
if uurl= ~/^(http|ftp)\:\/\/[a-zA-Z0-9]+(\.[a-zA-Z]+)$/
  puts"valid URL...!"
else
  puts "Invalid URL...!"
end