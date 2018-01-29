

class Student
  def self.addvar(aVar,aValue)
    class_variable_set(aVar,aValue)
  end
  def self.getvar(aVar)
    return class_variable_get(aVar)
  end

  def method_missing(method, *args, &block)
    if method.to_s =~ /aaa/
      puts "\ninvalid method name \" #{method} \" plz provide the valid mathod name.... "
      self.class.send :define_method ,method do
        puts "aaaaa"
        block.call
      end
    else
      super
   end
  end

end

#.......Setting Class Veriables.........
Student.addvar(:@@university,'NMU')
puts Student.getvar(:@@university)

s1 = Student.new

#........Setting instance veriaables.........

=begin
s1.instance_variable_set('@name','Sachin')
puts s1.instance_variable_get('@name')
s1.instance_variable_set(:@class,'MCA')
puts s1.instance_variable_get(:@class)
=end

puts "\nEnter how many attributs of student you want to store:"
no_ttr = gets.chomp.to_i

  for i in 1..no_ttr do
    puts "Enter #{i} attribut name and value:"
    attr_name , attr_val = gets.chomp.split(' ').each_with_index.map { |e,i| i==0 ? "@#{e}" : e }
    s1.instance_variable_set(attr_name,attr_val)        # setting instance veriables and theit values with user choice
  end


#...........Define method..........

#s1.define_singleton_method(:getData) { puts "name= #{@name}"; puts "class=#{@class}" }

vars = s1.instance_variables
#puts vars

s1.define_singleton_method(:getData) do
  puts "\n\n**** list of dynamically created instance veriables and their values:"
  vars.each do |v|
        # getting dynamically created instance veriables and their values
    puts v.to_s + " = " + s1.instance_variable_get(v)

  end
end

if s1.respond_to? :getData
  #s1.getData
  s1.send(:getData)
end

puts s1.respond_to? :aaa
s1.aaa{puts "aaa method call..."}
puts " after method method_missing"
puts s1.respond_to? :aaa
s1.aaa

#vars.each do |v| puts v
#end
#puts Student.instance_methods
