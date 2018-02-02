#multiple inheritance using modules

module Student

  def get_person
      puts "Please enter the following info."
      puts "Full name:"
      @name=gets.chomp.to_s
      puts "Adhar id:"
      @id=gets.chomp.to_i
      puts "Mobile number:"
      @mob=gets.chomp.to_i
      puts "Full Address:"
      @address=gets.chomp.to_s
  end

end

module SportsData

  def get_sportdata
    puts "Sports marks:"
    @sp_marks=gets.chomp.to_i
  end

end

module AcadmicsData

    def get_marks
      puts "Enter Marks of subjects."
      puts "Biology:"
      @s1=gets.chomp.to_i
      puts "Chemistry:"
      @s2=gets.chomp.to_i
      puts "Maths:"
      @s3=gets.chomp.to_i
      puts "Physics:"
      @s4=gets.chomp.to_i
    end
end

class Result

  include Student

  include SportsData

  include AcadmicsData

  def show
    puts "-----------------Student Record-----------------------"
    puts "Name = #{@name}"
    puts "Adhar Id = #{@id}"
    puts "Mobile No = #{@mob}"
    puts "Address = #{@address}"
    puts "Sports Marks = #{@sp_marks}"
    puts "Biology = #{@s1}"
    puts "Chemistry = #{@s2}"
    puts "Maths = #{@s3}"
    puts "Physics = #{@s4}"
    puts "--------------Total = #{@sp_marks+@s1+@s2+@s3+@s4}"
  end

end

result=Result.new
result.get_person
result.get_sportdata
result.get_marks
result.show


=begin
#OUTPUT OF CODE...........
C:\Neha>ruby inherit.rb
Please enter the following info.
Full name:
Neha Jagdish Tahalani
Adhar id:
9108876458696
Mobile number:
8888632228
Full Address:
Shrinivas apartment,Pune
Sports marks:
95
Enter Marks of subjects.
Biology:
75
Chemistry:
66
Maths:
89
Physics:
67
-----------------Student Record-----------------------
Name = Neha Jagdish Tahalani
Adhar Id = 9108876458696
Mobile No = 8888632228
Address = Shrinivas apartment,Pune
Sports Marks = 95
Biology = 75
Chemistry = 66
Maths = 89
Physics = 67
--------------Total = 392

C:\Neha>
=end
