# ------------------- FUNCTIONS ------------------- #
def fruits_and_veggies
	system "clear"
	puts "Hello friend! What is your first name?"
	@firstname = gets.chomp.capitalize

	puts "Thank you, what is your last name?"
	@lastname = gets.chomp.capitalize

	puts "What's your favorite fruit?"
	@fruit = gets.chomp.downcase

	puts "What's your favorite vegetable?"
	@veggie = gets.chomp.downcase

	print "Your name is " + @firstname + " " + @lastname + ". "
	puts "Your favorite fruit is #{@fruit} and your favorite veggie is #{@veggie}."
end

def lease
	system "clear"
	puts "Welcome to the lease generator"
	puts "What is your full name?"
	user_name = gets.chomp.split(" ").map(&:capitalize).join(" ") #This capitalizes every word of the sentence
	puts "Who are you leasing an apartment from?"
	leaser_name = gets.chomp.split(" ").map(&:capitalize).join(" ")
	puts "How long is the lease? (in months)?"
	length_of_term = gets.chomp.to_i
	puts "How much is rent per month?"
	rent = gets.chomp.to_i
	puts
	puts "Below is the lease agreement. Please sign at the end."
	puts "The leaser #{user_name} will be renting the apartment from #{leaser_name} for #{length_of_term} months."
	puts "The rate will be $#{rent} per month. On average this will cost $#{rent*length_of_term}"
end

def siri
	system "clear"
	puts "This is Siri speaking."
	puts "How many numbers do you want to use for your calculation?"
	numbers = gets.chomp.to_i
	user_numbers = []
	result = 0

	numbers.times do |num|
		puts "Please give me number #{num+1}"
		user_numbers << gets.chomp.to_f
	end

	puts "What operation would you like to perform? (+,-,*,/)"
	operator = gets.chomp.to_s

	result  = user_numbers[0]
	print "The answer to "
	user_numbers.each_with_index do |x, index|
		print x.to_s + " " + operator + " "
		if index == 0 #On the first run, assign a value to the result depending on the operation to be performed
			case operator
			when "+"
				result = 0
			when "-", "/"
				result = user_numbers[0] #For substractions and divisions, start with the first number provided
				next
			when "*"
				result = 1
			end
		end
		result = result.send(operator,x) #Sends the operator as the function to perform on x
	end

	print "\b\b\b is: "
	return result
end

def siri2
	system "clear"
	puts "This is Siri speaking."
	puts "What operation would you like to perform? (+,-,*,/)"
	operator = gets.chomp.to_s
	
	puts "What numbers do you want to use for your calculation? (comma separated)"
	user_numbers = gets.chomp.split(",")
	user_numbers.collect! {|x| x.strip.to_f}

	result  = user_numbers[0]
	print "The answer to #{user_numbers[0]} #{operator} "
	user_numbers.drop(1).each do |x|
		print x.to_s + " " + operator + " "
		result = result.send(operator,x) #Sends the operator as the function to perform on x
	end

	print "\b\b\b is: "
	return result
end
