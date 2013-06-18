def guess_number_1
	random_number = rand(10) # rand gives a random number between 0 and x-1
	puts "Guess a number, any number!"
	answer = gets.chomp.to_i
	if answer == random_number
		puts "You guessed right, the number is #{random_number}."
	else
		puts "Unfortunately, that's not quite right. The number is #{random_number}."
	end
end

def guess_number_2
	random_number = rand(10) # rand gives a random number between 0 and x-1
	puts "Guess a number, any number!"
	answer = gets.chomp.to_i
	while answer != random_number
		puts "Please guess again"
		answer = gets.chomp.to_i
	end
	puts "You guessed correctly! The random number is #{random_number}."
end

def guess_number_3
	tries = 1
	random_number = rand(10) # rand gives a random number between 0 and x-1
	puts "Guess a number, any number!"
	answer = gets.chomp.to_i
	while answer != random_number
		puts "Please guess again. You have had #{tries} tries so far."
		tries += 1
		answer = gets.chomp.to_i
	end
	puts "You guessed correctly! The random number is #{random_number}."
	puts "It took you #{tries} tries to guess the number correctly."
end

def guess_number_4
	tries = 1
	random_number = rand(10) # rand gives a random number between 0 and x-1
	puts "Guess a number, any number!"
	answer = gets.chomp.to_i
	while answer != random_number
		if answer > random_number
			location = "lower"
		else
			location = "greater"
		end
		puts "Please guess again. You have had #{tries} tries so far. The random number is
		#{location} than the number you have just guessed." 
		tries += 1
		answer = gets.chomp.to_i
	end
	puts "You guessed correctly! The random number is #{random_number}."
	puts "It took you #{tries} tries to guess the number correctly."
end