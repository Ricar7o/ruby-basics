puts "Hey, What is your name?"
name = gets.chomp
puts "Cool, #{name}"
puts "How old are you?"
age = gets.chomp
puts "Your name is #{name} and you are #{age} years old."
time = Time.now

puts "What is your current address?"
address = gets.chomp

puts "Please enter your city"
city = gets.chomp

puts "Please enter your state abbreviation"
state = gets.chomp

if state.length != 2 

		puts "Please enter a code that is only two characters long. /n"
		puts "Please enter your state abbreviation"
		state = gets.chomp
end
puts "Please enter your zip code"
zip_code = gets.chomp
if zip_code.length != 5
	puts "Please enter a zip code that is only five characters long. /n"
end

mailing_adrs = address + "/n" + city + ", " + state + " " + "zipcode" 
puts "Your address is /n" + mailing_adrs

current_year = time.year
puts "The current year is #{current_year}"

puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "You are #{current_year - birth_year} years old."