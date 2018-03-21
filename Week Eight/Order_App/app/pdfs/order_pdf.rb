class OrderPdf < Prawn::Document
  def initialize(order)
    super(top_margin: 70)
    @order = order
    # @view = view
    order_no
    line_items
    total_price
  end

  def order_no
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
    [["Qty", "Unit Price"]] +
    @order.line_items.map do |item|
      # [item.name, item.quantity, price(item.unit_price), price(item.full_price)]
      # [product.line_item.name, line_item.quantity, product.line_item.cost_price,order.line_item.order_value]
    [item.quantity, item.price]

    end
  end

  def total_price
    move_down 15
    text "Total Price: #{(@order.order_value)}", size: 16, style: :bold
  end

  private

   # def price(n)
    # @view.number_to_currency(n)
  # end
end
