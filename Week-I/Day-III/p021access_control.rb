class Box

  def initialize(h,w)
    @height =h
    @width = w
  end

  def display
    getArea
  end

  private
  def getArea
    @area = @height * @width
    puts "Area =  #{@area}"
  end
end
b = Box.new(10,20)
b.display
