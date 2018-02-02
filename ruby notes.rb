"MetaProgramming"
=> Metaprogramming is the writing of computer programs that write or 
manipulate other programs (or themselves) as their data, 
or that do 
part of the work at compile time that would otherwise be done at runtime.

Metaprogramming is writing code 
that writes code during runtime to make your life easier.

"Why we use metaprogramming?"

=> Metaprogramming can be used to move computations 
from run-time to compile-time, to generate code using 
compile time computations, 
and to enable self-modifying code.

"respond_to?"
=> it is method that is provide yo can check a given method can you
call that method upon that object or not.

"When we use it? respond_to?"
=> whenever you doubt there is an object anyone
   to know can i call this method on this object or not.

"Ruby proc"
=> procs are essentially reusable blocks.
   Blocks are not objects, but they can be converted into 
   objects of class Proc. This can be done by calling 
   the lambda method of the class Object. 
   A block created with lambda acts like a Ruby method.

   Proc objects are blocks of code that have been bound to a set of local variables. 
   The class Proc has a method call that invokes the block.	

   you cannot pass methods into other methods 
   (but you can pass procs into methods), 
   and methods cannot return other methods (but they can return procs).

   Proc is a callable piece of code. You can store it in a variable, 
   pass as an argument and otherwise treat it as a first-class value.

 "Ruby Block"
 => A block consists of chunks of code.

	You assign a name to a block.

	The code in the block is always enclosed within braces ({}).

	A block is always invoked from a function with the same name as that of the block. 
	This means that if you have a block with the name test, 
	then you use the function test to invoke this block.

	You invoke a block by using the yield statement.

	A program may include multiple BEGIN and END blocks. 
	BEGIN blocks are executed in the order they are encountered. 
	END blocks are executed in reverse order. When executed