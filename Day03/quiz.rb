def log_in
    password_saved = "password"
    # TODO:
    # 1) Ask User for password
    # 2) Get an input from the user for password
    # 3) while the user's input is incorrect, print an error message and ask for it again
	puts "Welcome. Please enter your password:"
	while gets.chomp != password_saved
		puts "Incorrect password. Please try again:"
	end
	"Successful login"
end

def sign_up
    puts "What's your username"
    username = gets.chomp
    puts "What's your password"
    password = gets.chomp
    # TODO: until the password is greater than 8 characters, ask the user
    # to input another password
    until password.length > 8
    	puts "Please make sure your password is more than 8 characters long. Try again:"
    	password = gets.chomp
    end
    "Password saved"
end

def sign_up_2
    puts "What's your username"
    username = gets.chomp
    puts "What's your password"
    password = gets.chomp
    puts "Confirm the password"
    password_confirmation = gets.chomp
    # TODO: until the password is greater than 8 characters and the password
    # matches with the password_confirmation, ask the user to re-input values
    until password.length > 8 && password == password_confirmation
    	puts "Please choose a password that's greater than 8 characters long:"
	    password = gets.chomp
	    puts "Confirm your password:"
	    password_confirmation = gets.chomp
	end
	"Password saved."
end

def quiz (cash, credit_score)

	if cash.to_i >= 10000
		puts "Okay, you have enough cash for the down payment.."
		if credit_score.to_i < 600 
			puts "Nope, you're not getting a car from us! Bye!"
			return false
		elsif credit_score.to_i < 700
			puts "Ehh, alright..you can get a car from us.."
			return true
		else
			puts "Looks like you pay your bills on time! You can buy a car from us."
			return true
		end
	else
		puts "Sorry, you don't have enough cash, go back to work and make some money."
		return false
	end

end

def qualify()
	puts "Welcome. How much money do you have for the downpayment?"
	downpayment = gets.chomp
	puts "What's your credit score?"
	score = gets.chomp
	# if quiz(downpayment, score)
	# 	puts "You qualify!"
	# else
	# 	puts "Sorry, not this time."
	# end
	return quiz(downpayment, score)
end
