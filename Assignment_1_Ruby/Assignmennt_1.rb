
class CompanyName
   def initialize(name)
      @name = name
   end

   def getName
      @name
   end

   def setName=(value)
      @name = value
   end
end

module Address

  def add_shipper
  print "Enter shipper address:"
    @add1=gets.chomp
    print "City:"
    @city=gets.chomp
  print "Postal code:"
    @postal_code=gets.chomp.to_i
    var={"add1"=>@add1,"city"=>@city,"postal_code"=>@postal_code}
    return var
  end


    def add_Shipping
      print "Enter shipping address:"
      @add2=gets.chomp
      print "City:"
      @city2=gets.chomp
      print "Postal code:"
      @postal_code2=gets.chomp.to_i

      var2={"add2"=>@add2,"city2"=>@city2,"postal_code2"=>@postal_code2}
      return var2
    end


end

module Order
  def getOrder(order_no,tracking_no)
    @order_no
    @tracking_no


   puts "\n\nCustomer Details..."
   print "Full name:"
   @fname=gets.chomp
   print "Enter email address:"
   @email=gets.chomp
   print "Mobile_no:"
   @mob_no=gets.chomp.to_i
 end

 def setOrder=(value1)
    @order_no = value1
 end

 def setOrder2=(value2)
    @tracking_no= value2
 end
end


class Invoice

  include Address
  include Order

  def show

    puts "\nshipper Address: #{@add1}"+",#{@city}"+",#{@postal_code}"
    puts "Shipping Address: #{@add2},#{@city2},#{@postal_code2}\n\n"

  end

end


n = CompanyName.new('Company Name')

n.setName = 'Anchanto'

x = n.getName()

puts "Name of the company is : #{x}"


obj2=Invoice.new

obj2.add_shipper
obj2.getOrder(1,23)
obj2.setOrder=1
obj2.setOrder2= 23
obj2.add_Shipping()


require './m.rb'
obj2.show()
