class SampleClass

	def sample_string

		name="my name is shubham and I am "
		age=23

		puts my_string_single_quote='Hello I\'m there'
		puts my_string_double_quote="Hello I'm there"
		puts my_string="Hello \"I am\" there"
		puts my_string1="I said,\"I'm here.\""	
		puts concat_string="hello "+ "I'm here."
		puts single_quote='Hello I am "Shubham".' #Double quote in single quote
		
		#puts name+age--in `+': no implicit conversion of Integer into String (TypeError)
		puts name+age.to_s #to_s converts integer to string

		puts "I said #{my_string_single_quote}" #interpolation operator evaluates the value of variable in double quote.

		puts multiline=%{
			I am shubham.
			I am 23.
		}

		puts heredoc=<<-END
		hello i am here
		my namde shubham
		END
		#heredocs preserve whitespaces

	end

		obj=SampleClass.new.sample_string
end