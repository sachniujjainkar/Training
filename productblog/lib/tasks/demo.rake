task :greet do
	puts "Hello World!!!"
end

task :ask => :greet do
	puts "How are you?"
end

task :pick_one => :environment do
	user=User.first
	puts "Oneis: #{user.first_name}"
end

