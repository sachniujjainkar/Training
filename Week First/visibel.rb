def global
  puts "These is the global method"
end

class Visibility1
 private def method1
    puts "This is private method"
  end
#method1
  public def method2
    puts "This is public method"
    #method1
  end

  protected def method3
    puts "This is protected method"

  end
end

class Visibility2 < Visibility1
  def m3
    puts "public method is call of base class"
    method2
  end

def m4
  puts "prtected method ids call"
  method3
end

def m5
  puts "Try to call private "
  method1
end
end

obj=Visibility2.new
obj.m3
#obj.method3
obj.m5
#global
