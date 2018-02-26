require './public/HelloWorld'
describe HelloWorld do
	context " When testing the HelloWorld class " do
		it "should say 'Hello World' when we call the say_hello method" do
			hw = HelloWorld.new
			message = hw.say_hello
			expect(message).to eq "Hello World!!!"

		end
	end
	describe "When testing the say_bye method " do
		it "ti should shuld return bye.." do
			hw = HelloWorld.new
			m = hw.say_bye
			expect(m).to eq "bye.."
		end
		
	end
end