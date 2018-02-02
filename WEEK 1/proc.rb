
# Blocks are not objects, 
# but they can be converted into objects of class Proc. This can be done by calling the lambda method of the class Object.

def hello_proc someProc
	puts 'Hello How are you?'
	someProc.call
	puts 'Hello I am here.'
end

sayHello=Proc.new do
	puts 'hello!!'
end

sayBye=Proc.new do
	puts 'Byeeee!!!'
end

hello_proc sayHello
# hello_proc sayBye

# you cannot pass methods into other methods (but you can pass procs into methods),
# and methods cannot return other methods (but they can return procs).