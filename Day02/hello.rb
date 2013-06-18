def hello
	puts "Hello, how are you?"
	answer = gets.chomp

	puts "Ah, I see that you are doing #{answer} today. "
end

def year_of_birth(age)
	time = Time.now
	current_year = time.year
	birth_year = current_year - age
	# puts "You were born in #{birth_year}."
	return birth_year
end

def multiply_three(x, y, z)
	result = x * y * z
	puts "The result is #{result}."
end

def multiply_any(arg1, *args)
	product = arg1
	args.each do |arg|
		product *= arg.to_f
	end
	puts "The product is #{product}."
end

def calculator(operator, *numbers)
	result = 0
	if operator == "*"
		result = 1
	else
		result = numbers[0]
		numbers.shift
	end

	numbers.each do |arg|
		#result = arg operator.send result
		result = result.send(operator,arg)
	end
	return result
end

def welcome_users(*usernames)
usernames.each do |name|
	puts "What is your age, #{name}?"
	age = gets.chomp.to_i

	puts "#{name}, you were born in " + year_of_birth(age).to_s + "."
	end
end

def circle_area(radius)
	return Math::PI * radius * radius
end

def cylinder_vol(radius, height)
	return circle_area(radius) * height
end