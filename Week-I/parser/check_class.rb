#method that check class declaration in cpp file
def class_check(fname)
  class_no=0
  l_no=0
  ufile=File.open(fname,'r')
  ufile.each_line{|line|
    line.strip!
    l_no+=1
    if line=~/^((public|protected|private)\s)?(class){1}\s[a-zA-Z_][a-zA-Z0-9_]+(\:((public|private)\s)?[a-zA-Z_][a-zA-Z0-9_]+(\,((public|private)\s)?[a-zA-Z_][a-zA-Z0-9_]+)*)?$/
      class_no +=1
    else
      if line=~/^(.*\s)?(class)/
        puts "\n#{line}"
        puts "wrong class declaration at line no:#{l_no}"

      end
    end   #end of if
  }
  return class_no
end     #end of get_classes method
