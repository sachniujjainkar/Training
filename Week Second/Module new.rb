puts "Module Program"

module Sport_mark

	def Sport_mark.sport_show(m1,m2)
		puts "This is module1 method"
		return m1,m2
	end 
end

module Theory_mark

	def Theory_mark.theory_show(t1,t2)
		puts "This is module 2 method"
		return t1,t2
	end

end

class Exam
	include Sport_mark
	include Theory_mark

		def initialize
			@r1,@r2,@r3,@r4 = 0
		end

		def cal
			@r1,@r2=Sport_mark.sport_show(10,20)
			puts "#{@r1}  #{@r2}  "
			puts @r1.object_id
			@r3,@r4=Theory_mark.theory_show(30,40)
			puts "#{@r3}   #{@r4}"
		end

		def total_marks
			puts @r1.object_id
			@to11tal= (@r1 + @r2 + @r3 + @r4)
			puts "Total of marks => #{@total}"
		end
end

	obj=Exam.new
	obj.cal
	obj.total_marks