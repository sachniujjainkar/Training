puts nil || 2008
puts false || 2008
puts "ruby" || 2008

# Both or and || return their first argument unless it is false, 
# in which case they evaluate and return their second argument.

puts nil or 2008
puts false or 2008
puts "ruby" or 2008

# he only difference between or and || is their precedence.
# || has a higher precedence than or.

@variable=@variable || "default value"