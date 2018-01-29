module Printable
  def self.class_method_x
    p 'class method x'
  end
  def instance_method_y
    p 'instance method y'
  end
end


class ExtendDocuments
  extend Printable
end

class IncludeDocument
  include Printable
end

Printable.class_method_x    #=> "class method x"
#Printable.instance_method_y   #=> undefined method `instance_method_y' for Printable:Module (NoMethodError)

#ExtendDocuments.class_method_x    #=> undefined method `class_method_x' for ExtendDocuments:Class (NoMethodError)
ExtendDocuments.instance_method_y   #=> "instance method y"



#....... When we used the extend it will add the instance methods defined in the module to the extended class.

#ExtendDocuments.new.class_method_x    #=> undefined method `class_method_x' for #<ExtendDocuments:0x007f97320883a8> (NoMethodError)
#ExtendDocuments.new.instance_method_y   #=> undefined method `instance_method_y' for #<ExtendDocuments:0x007fce11904340> (NoMethodError)

#IncludeDocument.class_method_x   #=>  undefined method `class_method_x' for IncludeDocument:Class (NoMethodError)
#IncludeDocument.instance_method_y   #=> undefined method `class_method_x' for IncludeDocument:Class (NoMethodError)


#......When we used the include it will add the instance methods defined in the module to the instances of the class including the module.

#IncludeDocument.new.class_method_x    #=> undefined method `class_method_x' for #<IncludeDocument:0x007f994a8f48d8> (NoMethodError)
IncludeDocument.new.instance_method_y   #=> "instance method y"
