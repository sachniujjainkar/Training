# --------- Address Module ---------
module Address
  def put_address
      puts "Address:#{@line1}, #{@line2}, #{@city}, #{@zip}"
  end
  def get_address
  #  puts 'Enter Address Details:'
    puts 'Enter Line 1:'
    @line1 = gets.chomp.to_s
    puts 'Enter Line 2:'
    @line2 = gets.chomp.to_s
    puts 'Enter City:'
    @city = gets.chomp.to_s
    puts 'Enter Postal code:'
    @zip = gets.chomp.to_s
  end
end


# --------Product Class --------------
class Product
  include Address
  def create_product
    puts 'Enter Product name:'
    @name = gets.chomp.to_s
    puts 'Enter Product SKU:'
    @SKU =gets.chomp.to_s
    puts "Enter Price of the product:"
    @price = gets.chomp.to_i
    puts "Enter Quantity of product:"
    @qty = gets.chomp.to_i
    puts 'Enter Seller address'
    get_address
  end
  def show_product
    puts "Product Name: #{@name}"
    puts "Product SKU: #{@SKU}"
    puts "Price: #{@price}"
    puts "Available qty: #{@qty}"
  end
  def get_product_name
    @name
  end
  def get_sku
    @SKU
  end
  def add_qty(qty)
    @qty += qty
  end
  def sub_qty(qty)
    @qty -=qty
  end
  def get_qty
    @qty
  end
  def get_price
    @price
  end
end



# ------------Order Class ---------
class Order
  include Address
  def create_order(item, qty)
    @item = item
    @price = @item.get_price * qty
    @qty = qty
    @ord_no = rand(100..10000)
    @trc_no = rand(100..10000)
    puts 'Enter Buyer details:'
    puts 'Name:'
    @bname = gets.chomp.to_s
    puts 'email:'
    @email = gets.chomp.to_s
    puts 'Contact no:'
    @mobile = gets.chomp.to_i
    puts 'Enter Address Details:'
    get_address
  end
  def ord_details
    puts "\n******* ORDER DETAILS *********"
  #  puts "#{@item.to_s}"
  #  puts @item.show_product
    puts "Order no. :#{@ord_no} \t tracking no. :#{@trc_no}"
    puts "Product Name: #{@item.get_product_name}\tProduct SKU: #{@item.get_sku}"
    puts "price per item:#{@item.get_price} \t no. of items: #{@qty}"
    puts "Total to be paid by customer #{@price}"
    puts "******* Shiping To *******"
    puts "buyer Name: #{@bname}, \t Email : #{@email}, \t Contact no: #{@mobile}"
    put_address
    puts "******* Shiping From *******"
    @item.put_address
  end

end




# ------------- Shop class ------------
class Shop
  def initialize
    @products =[]
    @order = Order.new
  end

  def menu
    while true
      puts "\n*******MENU******\n1.Create Product \n2.Buy Product\n3.EXIT"
      puts 'Enter Your Choice:'
      choice = gets.chomp.to_i
      case choice
      when 1
        @product = Product.new
        @product.create_product
        @products.push(@product)

      when 2
        buy_product
      when 3
        puts 'Bye....!'
        exit
      else
        puts "..........You Enter invalid choice............"
      end

    end
  end
  def buy_product
    if @products.count == 0
      puts '........You dont have created any product plz create the product.......'
      return
    else
      @products.each_with_index do |e, index|
        puts "***** product #{index}. *****"
        e.show_product
      end
      puts 'Enter which product you have to buy:'
      @product_no = gets.chomp.to_i
      if @product_no < @products.count
        puts 'Enter How many no of items you have to buy:'
        @qty = gets.chomp.to_i
        if @qty > @products[@product_no].get_qty
          puts "........no of quantity is greter than availabel quainty........"
        else
        #  puts '*************Order details ***********'
          @products[@product_no].sub_qty(@qty)
          @order.create_order(@products[@product_no],@qty)
          @order.ord_details
          puts '**************************************'
          menu
        end
      else
        puts "........you enterd wrong product no plz insert correct product no:........"
        #buy_product
        menu
      end
    end
  end
end
@shop = Shop.new
@shop.menu
