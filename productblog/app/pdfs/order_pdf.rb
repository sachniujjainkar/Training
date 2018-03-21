class OrderPdf < Prawn::Document
  def initialize(order)
    super(top_margin: 70)
    @order = order
    order_number
    line_items
    total_price
   
  end

  def order_number
  	text "Order \##{@order.order_no}", size: 30, style: :bold
  end

  def line_items
  	move_down 20
  	table line_item_rows do
    row(0).font_style = :bold
    columns(1..3).align = :right
    self.row_colors = ['DDDDDD', 'FFFFFF']
    self.header = true
  end
 end

 def line_item_rows
    [["Product", "Qty", "Price" ]] +
    @order.lineitems.map do |item|
      [item.name, item.quantity, item.price]
    end
  end

  def total_price
    move_down 15
    text "Total Price: #{(@order.order_value)}", size: 16, style: :bold
  end

  private

  # def price(n)
  #   #number_to_currency(n)
  # end
end