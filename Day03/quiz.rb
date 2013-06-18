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
