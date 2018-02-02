require_relative('functions')

start_date,end_date = query_user_for_date_range

puts start_date.strftime('%B %d %Y')
puts end_date.strftime('%B %d %Y')
