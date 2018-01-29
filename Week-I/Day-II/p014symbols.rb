
# use the object_id method of class Object
# it returns an integer identifier for an object
puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id



class Test
  puts :Test.object_id.to_s
  def test
    puts :test.object_id.to_s
    @test = 10
    puts @test.object_id.to_s
    puts :test.object_id.to_s
  end
end
t = Test.new
t.test


#Differance between symbols and strings
know_ruby = :yes
if know_ruby == :yes
  puts 'You are a Rubyist'
else
  puts 'Start learning Ruby'
end


know_ruby = 'yes'
if know_ruby == 'yes'
  puts 'You are a Rubyist'
else
  puts 'Start learning Ruby'
end
