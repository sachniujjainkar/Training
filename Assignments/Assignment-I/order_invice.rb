module Address
  attr_reader :to_line1, :to_line2, :to_city, :to_zip, :from_line1, :from_line2, :from_city, :from_zip
  def get_shipper_address
    puts 'Enter Shipper Details:'
    puts 'Enter shipper Line 1:'
    @from_line1 = gets.chomp.to_s
    puts 'Enter shipper Line 2:'
    @from_line2 = gets.chomp.to_s
    puts 'Enter shipper City:'
    @from_city = gets.chomp.to_s
    puts 'Enter shipper Postal code:'
    @from_zip = gets.chomp.to_s
  end
  def get_shipping_address
    puts 'Enter Shipping Details:'
    puts 'Enter shipping Line 1:'
    @to_line1 = gets.chomp.to_s
    puts 'Enter shipping Line 2:'
    @to_line2 = gets.chomp.to_s
    puts 'Enter shipping City:'
    @to_city = gets.chomp.to_s
    puts 'Enter shipping Postal code:'
    @to_zip = gets.chomp.to_s
  end
  def put_shipper_address
      puts '**** Shipper Address ****'
      puts "From:#{@from_line1}, #{@from_line2}, #{@from_city}, #{@from_zip}"
  end
  def put_shipping_address
    puts '**** Shipping Address ****'
      puts "To:#{@to_line1}, #{@to_line2}, #{@to_city}, #{@to_zip}"
  end
end
class Line_item
  attr_reader :item_name, :item_sku, :item_quantity, :item_price, :items_total_price
  def create_line_Item
    puts 'Enter item name:'
    @item_name = gets.chomp.to_s
    puts 'Enter item SKU:'
    @item_sku =gets.chomp.to_s
    puts "Enter Price of the item:"
    @item_price = gets.chomp.to_i
    puts "Enter Quantity of item:"
    @item_quantity = gets.chomp.to_i
    @items_total_price = @item_quantity * @item_price
  end
  def put_line_item_details
    puts "#{@item_name}\t\t#{@item_sku}\t\t#{@item_quantity}\t\t#{@item_price}\t\t#{@items_total_price}"
  end
end
class Order
  include Address
  attr_reader :ord_no, :ord_trc_no, :ord_email, :ord_mob, :line_items, :no_of_items, :order_total_price

  def initialize()
    @line_items = []
    @order_total_price = 0
  end
  def create_order
    @ord_no = rand(100..10000)
    @ord_trc_no = rand(100..10000)
    puts 'Enter Buyer details:'
    puts 'email:'
    @ord_email = gets.chomp.to_s
    puts 'Contact no:'
    @ord_mob = gets.chomp.to_i
    puts 'How many items you have to buy:'
    @no_of_items = gets.chomp.to_i

    for i in 1..@no_of_items do
      puts "Enter #{i} item Details"
      @line_item = Line_item.new
      @line_item.create_line_Item
      @line_items.push(@line_item)
      @order_total_price += @line_item.items_total_price
    end
    get_shipping_address
    get_shipper_address
    show_order_details
  end
  def show_order_details
    puts '--------------------------- ORDER INVICE -----------------------------------'
    puts "Order no. : #{@ord_no}\t\tOrder trc no: #{@ord_trc_no}"
    puts "e-mail: #{@ord_email}\t\tMobile No.: #{@ord_mob}"
    puts '.........................List of items in Order ............................'
    puts '............................................................................'
    puts "Item Name\tItem SKU\tItem quantity\tItem price\tTotal pay for item"
    @line_items.each { |item| item.put_line_item_details  }
    puts "\t\t\t\t\tTOTAL PAID BY CUSTOMMER :#{@order_total_price}"
    puts '............................................................................'
    put_shipper_address
    put_shipping_address
  end
end

@order = Order.new
@order.create_order
