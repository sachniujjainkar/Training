#method tat check breses in cpp file
def bres_check(fname)
arr =Array.new(100)
top =-1
no_line=1
  ufile=File.open(fname,'r')

  ufile.each_char { |chr|
    if chr=="\n" then
      no_line +=1

    end
    if chr == '[' || chr == '{' || chr == '(' then
      top +=1
      arr[top]=chr
    else
      if chr ==']'||chr =='}'||chr == ')' then
        if arr[top] == '['&& chr == ']'
          top -=1
        elsif arr[top] == '{' && chr== '}'
          top -=1
        elsif arr[top] == '(' && chr == ')'
          top -=1
        else
          puts "\n#{chr}"
          puts "\nInvalid parenthesis at line no: #{no_line}!"

          return
        end

      end

    end

    }
    if top != -1 then
      puts "\ninvalid parenthesis: #{arr[top]} "
    else
      puts "\nAll parenthesis are valid...!"
    end
end
