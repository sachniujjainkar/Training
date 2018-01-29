class V

def m1
  puts "Public method"
end

protected
 def m2
  puts "protected method"
end

private
def m3
 puts "private method"
end

end

class V2 < V

  #protected
  def m4
    m3
    m2
  end

end

obj = V2.new
obj2= V2.new

obj2.m4


obj.m1
obj.m2
obj.m3
obj2.m4
