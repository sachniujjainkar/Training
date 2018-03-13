require 'json'
 arr={:name => "Renu", :age => 20}
 p j_text = arr.to_json
p JSON.parse(j_text)