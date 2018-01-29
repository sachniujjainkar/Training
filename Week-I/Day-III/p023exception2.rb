begin
  File.open('p020block.rb','r') do |file|
    while line=file.gets
      puts line
    end
  end
rescue Exception => msg
  puts msg
ensure
    puts "this is example of exception handeling "
end
