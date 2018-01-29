#require 'remp.rb'
#Ruby Script for parsing CPP classes,methods and breses in the cpp file


load 'check_para.rb'
load 'check_methods.rb'
load 'check_class.rb'
class Data_Complier
  @fname
  @ufile

  def select_Lang(ext)                      #method that check file extention
    case ext
    when '.c'
    puts "c file...!"
    when '.cpp'
    #  puts "cpp file...!"
      no_of_classes =class_check(@fname)                #method that check class declaration in cpp file
      puts "\nno of classes in file:#{no_of_classes} "
      bres_check(@fname)                                #method tat check breses in cpp file
      method_check(@fname)                             #method tat check method declaration in cpp file
    when '.java'
      puts "java file...!"
    else
      puts "try another file...!"
    end     #end of when statement
  end


     #end of select_Lang method
  def get_file                            #method that get file from user input
    puts "Enter the file name:"
    @fname=gets.chomp
    #puts fname
    begin
      @ufile=File.open(@fname,'r')
      #  if ufile
      puts "file is open"
      fextention=File.extname(@ufile)
      puts "file extention is:#{fextention}"
      select_Lang(fextention)


    end   #end of begin
  end   #end of get file method
end   #end of Data_Complier class


d1=Data_Complier.new()
d1.get_file
