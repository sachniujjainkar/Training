class Post

  attr_accessor :title, :content, :author, :publish_date

  def initialize(title, content, author, publish_date)
    @title = title
    @content = content
    @author = author
    @publish_date = publish_date
  end

  def show
    p  "#@title  #@content  #@author #@publish_date"
  end

end

p1= Post.new("C++ Primar","C++ basics" , "Balguruswami", "12/25/7634").show
