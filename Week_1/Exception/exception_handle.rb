begin

	File.open("fh1.rb", "r") do |f1|
		while line=f1.gets
			puts line
		end
	end

	File.open("fh2.rb", "w") do |f2|  
		f2.puts "created by Neha\nThanxx..!"
	end
	
rescue Exception => msg

	puts msg
	
end

