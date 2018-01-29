class X < String
end

obj = X.new

puts obj.is_a? Object        # true
puts obj.kind_of? String      # true
puts obj.instance_of? String  # false
puts obj.instance_of? X       # true
