def no_mutate(array)
  array.last
end
a=Array.new 
p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"