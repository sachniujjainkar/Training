# Different ways to create hash
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine', 12 => 'dodecine'}
puts h.length  # 4
puts h['dog']  # 'canine'
puts h
puts h[12]
puts 'keys are:'+h.keys.to_s

puts 'Values are:'+h.values.to_s

#second way to create hash
people = Hash.new
people[:nickname]='sp'
people[:name] = 'sachin'
people[:lastname] = 'bhoi'

puts people
puts 'lastname:'+people[:lastname]

#third way to create the hash
h = {nickname: 'sp', language: 'sachin', lastname: 'bhoi'}
puts h
