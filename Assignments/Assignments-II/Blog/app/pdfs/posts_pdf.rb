class PostsPdf < Prawn::Document
  def initialize(posts)
    super()

    @posts = posts
    draw
  end
  def draw
    text "Posts", :size => 50,
                                       :align => :center
    @posts.each do |post|
      text "Title: #{post.title}", size: 16, style: :bold
      move_down 5
      stroke_horizontal_rule
      move_down 5
      text "Category: #{post.category.name}"
      move_down 5
      text "Body: ", size: 12, style: :bold
      text  post.body
      move_down 20
      stroke_horizontal_rule
      start_new_page
    end
    
  end
  def order_number
    text "Order \##{@order.order_number}", size: 30, style: :bold
  end
  
  def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def line_item_rows
    [["Product", "Qty", "Unit Price", "Full Price"]] +
    @order.line_items.map do |item|
      [item.name, item.quantity, price(item.unit_price), price(item.full_price)]
    end
  end
  
  def price(num)
    @view.number_to_currency(num)
  end
  
  def total_price
    move_down 15
    text "Total Price: #{price(@order.total_price)}", size: 16, style: :bold
  end
end