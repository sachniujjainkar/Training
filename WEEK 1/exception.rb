i=0
while i<=10
  begin
    if i ==0
      1/0
    end
    raise "random runtime exception"
    p 'never get executed'
  rescue ZeroDivisionError
    p 'ZeroDivisionErrors!'
    i+=1
  end
end