class BankAccount
	######## Class level ##########
	@@interest_rate = 0.06
	@@total_loans_out = 0.0
	@@total_money_in_accounts = 0.0

	def self.get_total_loans_out
		@@total_loans_out
	end

	def self.transfer_money(from, to, amount)
		raise ArgumentError, "Please provide a positive number." unless amount.to_f > 0
		unless from.get_balance >= amount.to_f
			puts "Not enough funds in #{from.name}'s' account to transfer $#{amount.to_f}"
		else #For unless conditionals, the else method is the one executed if the condition is true
			from.withdraw_money(amount)
			to.deposit_money(amount)
		end
	end

	def total_cash_on_hand
		@@total_money_in_accounts - @@total_loans_out
	end

	####### Instance level ##########
	attr_accessor :name, :balance, :loan

	def initialize(name, amount = 100.0)
		raise ArgumentError unless amount.to_f > 0 #This is throwing an error to the user if the amount can't be converted to a float
		@name = name
		@balance = amount.to_f
		@loan = 0.0 #Remember to initialize all variables if I pretend to use them in methods later on
	end

	def deposit_money(amount)
		raise ArgumentError, "Please provide a positive number." unless amount.to_f > 0
		@balance += amount.to_f
		@@total_money_in_accounts += amount
		puts "Deposited #{format('$%.2f',amount.round(2))} to #{@name}'s account."
		@balance
	end

	def withdraw_money(amount)
		raise ArgumentError, 'Please provide a positive number.' unless amount.to_f > 0
		raise ArgumentError, "You don't have enough funds to withdraw #{format('$%.2f',amount.round(2))}" unless amount <= @balance
		@balance -= amount.to_f
		@@total_money_in_accounts -= amount.to_f
		puts "Withdrew #{format('$%.2f',amount.round(2))} from #{@name}'s account."
		@balance
	end

	def get_balance
		if @loan > 0
			puts "#{@name} has a loan for $#{@loan}"
		end
		@balance
	end

	def take_loan(amount)
		raise ArgumentError, "Please provide a positive number." unless amount.to_f > 0
		@@total_loans_out += amount.to_f
		@loan += amount.to_f
	end

	def repay_loan(amount)
		raise ArgumentError, "Please provide a positive number" unless amount.to_f > 0
		if amount > @loan
			@@total_loans_out -= @loan
			puts "Your loan has been fully repaid. Here's your change: $#{amount.to_f - @loan}"
			@loan = 0
		else
			@@total_loans_out -= amount.to_f
			@loan -= amount.to_f
		end
		puts "Loan balance:"
		@loan
	end

	def get_outstanding_loans
		@loan
	end

	def accrue_interest
		if @loan <= 0
			puts "#{@name} has no money loaned"
		end
		#This code is executed either way because in case of 0, it doesn't affect balances
		@@total_loans_out += @loan * (1 + @@interest_rate) 
		@loan *= (1 + @@interest_rate)
		@loan
	end

end

# Code to initialize variables and improve testing time
system "clear"
=begin

ricardo = BankAccount.new("Ricardo")
sonny = BankAccount.new("Sonny",200)
ale = BankAccount.new("Ale",300)

ricardo.take_loan(100)
sonny.take_loan(200)

ricardo.accrue_interest

=end