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
	random_number = rand(100) # rand gives a random number between 0 and x-1
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

def guess_number_5
    random_number = rand(100) # rand gives random number between 0 and x-1
    puts "Guess a number from 0-99"
    # TODO: Same as guess_number_3 but tell the user whether they are getting warmer or colder
    # (For the first guess you don't tell them warmer or coler)
    # HINT: use the "abs" method for absolute value. Example -5.abs returns 5
    answer = gets.chomp.to_i
    distance = (random_number - answer).abs
    if answer == random_number
    	puts "Amazing! First try and you got it!"
    else
    	puts "Nope. Keep trying:"
	    until answer == random_number
	    	distance = (random_number - answer).abs
	    	answer = gets.chomp.to_i
	    	if distance > (random_number - answer).abs
	    		if answer == random_number
	    			break
	    		else
	    			puts "Warmer. Try again:#{random_number}"
	    		end
	    	else
	    		puts "Colder. Try again:#{random_number}"
	    	end
		end
		"Got it!"
	end
end

def countdown(count)
    # print out numbers from count to 0
    puts count
    puts count -= 1 until count == 0
end

def countup(count)
    # opposite of countdown
    counter = -1
    puts counter until (counter += 1) == count
    puts count
end

def fizz(count)
    # During countdown, multiples of 3 are replaced with fizz
    while count != 0
    	if count % 3 == 0
    		puts "fizz"
    		count -= 1
    	else
    		puts count
    		count -= 1
    	end
    end
    puts "0"
end