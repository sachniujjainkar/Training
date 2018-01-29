# define a class
class Box
   # constructor method
 @@count =0
   def initialize(w,h)
     @@count +=1
      @width, @height = w, h


   end
   # instance method
   def getArea
      @area=@width * @height
      puts " base box area is #{@area}"
   end
   def display
     puts "base class display call...#{@@count}"
   end

end

# define a subclass
class BigBox < Box

   # change existing getArea method as follows
   def getArea
    
      @area = @width * @height
      puts "Child Big box area is : #@area"
   end
end

# create an object
box = BigBox.new(10, 20)

# print the area using overriden method.
box.getArea()
box.display
box2 = BigBox.new(10, 20)
box2.display
