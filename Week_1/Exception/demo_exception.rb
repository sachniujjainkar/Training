#demo of raise and rescue

def exp_mtd
	begin
		puts 'before raise...'
		raise 'An error occured.'
		puts 'After raise.'
	rescue
		puts 'Rescued here..'

	end
	puts 'After begin block.'
end

exp_mtd