require 'prawn'
class OrderInvicePdf < Prawn::Document
  def initialize(order)
    super()

    @order = order
    draw
    line_items
    line_item_rows
  end
  def draw
    text "Order Invoice", :size => 30, :align => :center
    # @order.each do |post|
      text "Order no: #{@order.order_no}", size: 16, style: :bold
      move_down 5
      stroke_horizontal_rule
      move_down 5
      text "Customer name: #{@order.user.first_name}  #{@order.user.last_name}"
      move_down 5
      text "Address: ", size: 12, style: :bold
      text  "#{@order.address.line1}, #{@order.address.line2}, #{@order.address.line3}, #{@order.address.city}, #{@order.address.state}, #{@order.address.country}, #{@order.address.postal_code}"
      stroke_horizontal_rule
      move_down 20
      t = make_table([["Delivery Date : #{@order.delivery_date.to_formatted_s(:rfc822)}", "Express Delivery : #{if @order.is_express_delivery then 'Yes' else 'No' end }", "Customer Pickup : #{if @order.is_custommer_Pickup then 'Yes' else 'No'end }"],
             ["Order currency : #{@order.order_currency}", "Special Instruction : #{@order.special_instruction}", "Order Price : #{@order.order_price}"]])
      
      t.draw
      move_down 10
      stroke_horizontal_rule
      move_down 10
      text "Items", :size => 20
      # start_new_page
    # end
    
  end

  def line_items
   move_down 10
   table line_item_rows do
     row(0).font_style = :bold
     columns(1..4).align = :right
     self.row_colors = ['DDDDDD', 'FFFFFF']
     self.header = true
   end
 end

 def line_item_rows
   [["Name", "SKU", "Qty", "Price", "Total"]] +
   @order.line_items.map do |line_item|
     [line_item.product.name, line_item.product.sku, line_item.quantity, line_item.product.price,line_item.quantity * line_item.product.price]
   end
 end

end



