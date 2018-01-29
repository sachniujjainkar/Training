module Person
  def getDetails
    puts 'Enter Person name:'
    @name = gets.chomp
    puts 'Enter Person gender (M/F):'
    @gender = gets.chomp
    puts 'Enter Person age:'
    @age = gets.chomp
    puts 'Enter Person address:'
    @address = gets.chomp
  end
  def putDetails
    puts "Person name :#{@name}"
    puts "Person gender :#{@gender}"
    puts "Person age :#{@age}"
    puts "Person address :#{@address}"

  end
end
module Account
  def getAccountDetails
    puts "Enter Account no :"
    @acNo = gets.chomp
    puts "Enter Account type (saving/current) :"
    @type = gets.chomp
    @balance = 0
  end
  def putAccountDetails
    puts "Account no :#{@acNo}"
    puts "Account Type :#{@type}"
    puts "Account balance :#{@balance}"
  end
  def creditAccount(amount)
    if @balance >amount
      @balance -= amount
      puts 'Balance is credited from Account.....'
    else
      puts "Insuficient balance...."
    end
  end
  def debitAccount(amount)
    @balance += amount
    puts 'Balance is debited in Account.....'
  end

end


class Employee
  include Person
  include Account
  def initialize
    getDetails
    puts 'Enter Employee ID :'
    @eid = gets.chomp
    getAccountDetails
  end
  def putEmployeeInfo
    puts '.....Employee INFO.....'
    putDetails
    puts "Employee ID :#{@eid}"
    putAccountDetails
  end
  def menu
    while true
      puts "\n....MENU....\n1.Employee Details\n2.Credit Account Balance\n3.Debit Account Balance\n4.Exit"
      puts 'Enter your Choice :'
      ch = gets.chomp.to_i
      case ch
      when 1
        putEmployeeInfo
        #break
      when 2
        puts 'Enter amount to credit :'
        amount = gets.chomp.to_i
        creditAccount(amount)
        #break
      when 3
        puts 'Enter amount to debit :'
        amount = gets.chomp.to_i
        debitAccount(amount)
        #break
      when 4
        puts 'Good byeeee...'
        exit
      else
        puts "Invalid choice ....\nPlz insert your choice again...."
      end
    end
  end
end

emp1 = Employee.new
emp1.menu
