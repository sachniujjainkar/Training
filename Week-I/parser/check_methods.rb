#method tat check method declaration in cpp file

def method_check(fname)       #function for chacking the no of valid methods in program
  ufile=File.open(fname,'r')
  no_line=0
  no_methods=0
  ufile.each_line { |line|
    no_line +=1
    line.strip!
    #puts line
    if line=~/^(int|float|char|double|void)\s[a-zA-Z_][a-zA-Z0-9_]*\(((int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?(\,(int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?)*)?(\)(\;?|\n|\s*\{))$/
      #puts "valid method"
      no_methods +=1
    else
      #puts "invalid method"
      if line=~/^(int|float|char|double|void)\s[a-zA-Z_][a-zA-Z0-9_]*\(/ || line= ~/^.[a-zA-Z_][a-zA-Z0-9_]*\(((int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?(\,(int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?)*)?(\)(\;|\n|\s*\{))$/ ||
        line=~/^(int|float|char|double|void)\s.*((int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?(\,(int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?)*)?(\)(\;|\n|\s*\{))$/
            puts "\n#{line}"

      end
    end
  }
  puts "\ntotal no of lines are #{no_line} and methods are #{no_methods}"
end
