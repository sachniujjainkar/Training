module Info
	attr_accessor :name , :id , :ini_bal , :total_bal
	# def initialize
		# @total_bal=0
		# @bal = 0
	# end

	def getInfo
		puts "Enter the name of the Customer=>"
		name = gets.chomp
		puts "Enter the Customer bank ID"
		id = gets.chomp
		puts "Enter your initial balance"
		ini_bal = gets
		total_bal = ini_bal
	end
	def show
		puts "Customer Name => #{name}"
		puts "Customer ID => #{id}"
		puts "total_balance => #{total_bal}"
	end

end
module Deposite
	include Info
	attr_accessor = :depo_money , :total_bal
	def initialize
	  @total_bal = 0
 	end

	def cal_deposite
		puts "Enter how many money you want to deposit"
		depo_money = gets
		total_bal.to_i = (total_bal.to_i + depo_money.to_i)
		puts "Your total balance is=>#{total_bal}"

	end
end

module Withdrawal
	include Deposite
	attr_accessor = :withdraw_money 
	def calWithdraw
		puts "Enter how many money you want to withdraw"
		withdraw_money=gets
		total_bal.to_i = (total_bal.to_i- withdraw_money.to_i)
		puts "Your total balance is=>#{total_bal}"
	end
end

class Transaction

	include Info
	include Withdrawal
	include Deposite

	def menu
		while true
		puts "1.new customer"
		puts "2.show Info of customer"
		puts "3. Deposit"
		puts "4.Withdraw money"
		puts "5.Exit"
		puts "Enter your choice=>"
		ch=gets.chomp.to_i

				case ch
					when 1
						getInfo
						# show
					when 2
						show
					when 3
						cal_deposite
					when 4
						calWithdraw
					 when 5
					 	exit
					#return if (ch == 5)			
				end
		end	
	end	
end

# Object Creation

t1=Transaction.new
t1.menu
