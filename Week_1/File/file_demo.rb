#reading a file using IO object

IO.foreach("testfile.txt"){|line| print(line)}

puts "\n"
lines=IO.readlines("testfile.txt")
lines.each{|line| puts(line)}

#reading a file using File object
File.foreach("testfile.txt"){|line| puts(line)}

lines=File.readlines("testfile.txt")
lines.each{|line| puts(line)}

#creating a new file in write mode
f=File.new("myfile.txt","w")
f.puts("I","wandered","lonely","as","a","cloud")
f.close

#reading from that file.
charcount=0
linecount=0
f=File.new("myfile.txt","r")
while !(f.eof)  do
	c=f.getc()
	if( c == 10)then
		linecount += 1
		puts("<End Of Line #{linecount}>")
	else
		putc(c)
		charcount += 1
	end
end

   if f.eof then
	   puts("<End Of File>")
   end
  f.close
  puts("This file contains #{linecount} lines and #{charcount} characters")	

