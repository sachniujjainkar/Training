
def create_list
  print"\nEnter the List Name for Products:"
  name=gets.chomp
  hash={"name"=>name,"items"=>Array.new}
  return hash
end

def add_item
print "Enter Item name:"
  item_name=gets.chomp
  print "Enter Price:"
  price=gets.chomp.to_i
  print "Enter SKU:"
  sku=gets.chomp.to_i
print "Enter Quantity:"
  quantity=gets.chomp.to_i
  hash={"name"=>item_name,"price"=>price,"quantity"=>quantity}
  return hash
end

def print_separator(character="-")
 puts character*90
end


def print_list(list)
puts "List:#{list['name']}"

print_separator()

list["items"].each do |item|
  puts "\tItem: " +item['name'] + "\t\t" +
  "Price: " +item['price'].to_s + "\t\t"+
  "SKU: "+ item['sku'].to_s + "\t\t" +
   "Quantity: " + item['quantity'].to_s + "\n\t" +
   "TotalPrice: " + (item['price'] * item['quantity']).to_s

  end


print_separator()

puts "Total items in cart: "+list["items"].count.to_s



print_separator()

end

var=create_list()
puts"OK.. Now add some items to your cart."

var['items'].push(add_item())
puts "Do you want to add more item?(Yes/No)"
more_item=gets.chomp

while more_item=="Yes" ||more_item=="yes" do
 var['items'].push(add_item())

  puts "Do you want to add more item?(Yes/No)"
  more_item=gets.chomp
  break if more_item=="No"|| more_item=="no"
  end

puts "Here is you shopping list"

puts "*********************************Invoice**************************************"
print_list(var)

total=0
var['items'].each do |item|
  total+=item['quantity']*item['price']
end

puts "Total payable amount: #{total}"
print_separator()
