class X < String
end

var=X.new

puts var.is_a? String
puts var.kind_of? String
puts var.instance_of? String

