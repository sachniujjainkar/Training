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
end