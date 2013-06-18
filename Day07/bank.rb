class BankAccount
	######## Class level ##########
	@@interest_rate
	@@outstanding_loans

	####### Instance level ##########
	attr_accessor :name, :balance, :loan

	def initialize(name, amount = 100.0)
		raise ArgumentError unless amount.to_f > 0 #This is throwing an error to the user if the amount can't be converted to a float
		@name = name
		@balance = amount.to_f
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
		puts "The balance in #{@name}'s account is:"
		@balance.round(2)
	end

	def take_loan(amount)
		raise ArgumentError, 'Please provide a positive number.' unless amount.to_f > 0
		@@outstanding_loans += amount.to_f
		@loan += amount
end

# Code to initialize variables and improve testing time

ricardo = BankAccount.new("Ricardo")
sonny = BankAccount.new("Sonny",200)
ale = BankAccount.new("Ale",300)