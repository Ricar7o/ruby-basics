class BankAccount
	######## Class level ##########
	@@interest_rate = 0.06
	@@outstanding_loans = 0.0

	def self.get_outstanding_loans
		@@outstanding_loans
	end



	####### Instance level ##########
	attr_accessor :name, :balance, :loan

	def initialize(name, amount = 100.0)
		raise ArgumentError unless amount.to_f > 0 #This is throwing an error to the user if the amount can't be converted to a float
		@name = name
		@balance = amount.to_f
		@loan = 0.0
	end

	def deposit_money(amount)
		raise ArgumentError, "Please provide a positive number." unless amount.to_f > 0
		@balance += amount
		"Deposited #{format('$%.2f',amount.round(2))} to #{@name}'s account."
	end

	def withdraw_money(amount)
		raise ArgumentError, 'Please provide a positive number.' unless amount.to_f > 0
		raise ArgumentError, "You don't have enough funds to withdraw #{format('$%.2f',amount.round(2))}" unless amount <= @balance
		@balance -= amount
		"Withdrew #{format('$%.2f',amount.round(2))} from #{@name}'s account."
	end

	def get_balance
		if @loan > 0
			puts "#{@name} has a loan for $#{@loan}"
		end
		puts "The balance in #{@name}'s account is:"
		@balance.round(2)
	end

	def take_loan(amount)
		raise ArgumentError, "Please provide a positive number." unless amount.to_f > 0
		@@outstanding_loans += amount.to_f
		@loan += amount.to_f
	end

	def repay_loan(amount)
		raise ArgumentError, "Please provide a positive number" unless amount.to_f > 0
		if amount > @loan
			@@outstanding_loans -= @loan
			puts "Your loan has been fully repaid. Here's your change: $#{amount.to_f - @loan}"
			@loan = 0
		else
			@@outstanding_loans -= amount.to_f
			@loan -= amount
		end
		puts "Loan balance:"
		@loan
	end

	def accrue_interest
		if @loan <= 0
			puts "#{@name} has no money loaned"
		end
		#This code is executed either way because in case of 0, it doesn't affect balances
		@@outstanding_loans += @loan * (1 + @@interest_rate) 
		@loan *= (1 + @@interest_rate)
		@loan.round(2)
	end

end

# Code to initialize variables and improve testing time
system "clear"
ricardo = BankAccount.new("Ricardo")
sonny = BankAccount.new("Sonny",200)
ale = BankAccount.new("Ale",300)