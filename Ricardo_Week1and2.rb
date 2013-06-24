# --------------   MakerSquare ----------------
# ------------ Ricardo Cervantes --------------
# ----------- Week 2 deliverable --------------

# Exercise 1 - Gets and puts
def exercise1_gets_puts
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
end
# -----------------------------------------------------------

# Exercise 2 - Lease generator
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
# -----------------------------------------------------------

# Exercise 3 - Siri
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
# -----------------------------------------------------------

# Exercise 4 - Garage sale
def garage_sale
  garage_items = ["computer", "black backpack", "tv stand", "office chair"]

  puts garage_items[1]
  puts

  garage_items[garage_items.length-1] = "rolling desk chair"

  garage_items.delete("tv stand")
  garage_items.insert(1,"couch")
  garage_items.push("table")
  garage_items << "blender"
  puts garage_items
  puts
end
# -----------------------------------------------------------

# Exercise 5 - Garage sale 2
def garage_sale_2
  garage_items = ["computer", "couch", "black backpack", "rolling desk chair", "table", "blender"]
  
  sorted_garage_items = garage_items.sort
  puts "Sorted garage items: "
  puts sorted_garage_items
  puts
  
  reversed_garage_items = sorted_garage_items.reverse
  puts "Reversed garage items:"
  puts reversed_garage_items
  puts

  puts "Capitalized items:"
  garage_items_capitalized = sorted_garage_items.collect {|item| item.capitalize}
  puts garage_items_capitalized
  puts
end
# -----------------------------------------------------------

# Exercise 6 - Family last name
def family
  system "clear"
  smith_family = ["John", "Jane", "Jacob"]
  last_name = "Smith"
  smith_family.collect! {|person| person = person + " " + last_name}
  return smith_family
end
# -----------------------------------------------------------

# Exercise 7-14 - Devices
def devices
  person = {:height => 1.77, :name => "Ricardo Cervantes", :eye_color => "brown"}
  test = {}
  test[:fave_movie] = "Inception"

  hash1 = {"XBox" => "Microsoft", "PS" => "Sony"}
  hash2 = {"Macbook" => "Apple", "Windows 8" => "Microsoft"}
  
  merged_hash = hash1.merge(hash2)

  merged_hash.each_pair {|key, value| puts "#{key} is made by #{value}."}
end
# -----------------------------------------------------------

# Exercise 15 - Bob the builder
def bob_the_builder
  people = {"name" => "bob", :job => "builder", 21 => "current_age"}
  puts people["name"]
  puts people.values
  puts
end
# -----------------------------------------------------------

# Exercise 16 - Kings
def king
  kings = {
      "name" => {
          :first => "Louis",
          :last => "The Thirteenth"
      },
      "father" => {
          "name" => {
              :first => "Louis",
              :last => "The Twelvth"
          },
          "father" => {
              "name" => {
                  :first => "Louis",
                  :last => "The Eleventh"
              },
              "father" => "You've gotta be kidding me!"
          }
      }
  }

  puts kings.values[1]
  puts 
  puts kings["father"]
end
# -----------------------------------------------------------

# Exercise 17 - Friends
def friends
  my_friends = [
      {
          :name => "Bob",
          :occupation => "Builder"
      },
      {
          :name => "Dora",
          :occupation => "Explorer"
      },
      {
          :name => "Mandy",
          :occupation => "Handy(wo)man"
      },
  ]

  my_friends.each {|x| puts "#{x[:name]} works as #{x[:occupation]}."}
end
# -----------------------------------------------------------

# Exercise 18 - Garage sale with prices
def garage_with_prices
  garage_inventory = []
  garage_inventory << {name: 'computer', price: '100.00', quantity: 1}
  garage_inventory << {name: 'book', price: '3.50', quantity: 5}

  garage_inventory.each do |item|
    puts "Items for sale: #{item[:quantity]} #{item[:name].capitalize}(s) at $#{item[:price]} each"
  end
  puts
  puts "Inventory:"
  puts "----------"
  puts "#{garage_inventory.count} types of items"
  total_value = 0
  print "Total value: "
  garage_inventory.map do |item|
    total_value += item[:quantity].to_f * item[:price].to_f
  end
  puts format("$%.2f",total_value.round(2)) #This formats the output to show the '$' sign and 2 decimal places
end
# -----------------------------------------------------------

# Exercise 19-20 - Show profile
def show_a_profile
  # TODO: Print out html code to show your profile
  # Include a header, a paragraph and an image
  # Note that you're printing the html code inside of a string
  puts "<h1>Ricardo Cervantes</h1>"
  puts "<p>This is my profile and below is my pic.<p>"
  puts "<img src=\"RCA.jpg\">"
end
# -----------------------------------------------------------

# Exercise 21 - Show profile with name
def show_a_profile_with_pic(my_name)
  # This time include the person's name which has been passed in
  # as an argument.
  puts "<h1>#{my_name}</h1>"
  puts "<p>This is my profile and below is my pic.<p>"
  puts "<img src=\"RCA.jpg\">"
end
# -----------------------------------------------------------

# Exercise 22 - Show a profile with more
def show_a_profile_with_name_and_more(my_name, my_age, my_gender)
  # TODO: This profile should provide more information based on the
  # person's name, age, and gender
  puts "<h1>#{my_name}</h1>"
  puts "<p>I am a #{my_age}-year-old #{my_gender}.<p>"
end
# -----------------------------------------------------------

# Exercise 23 - Multiply 2 and print
def multiply_2_and_print(x, y)
  result = x * y
  puts "The result is #{result}."
end
# -----------------------------------------------------------

# Exercise 24 - Multiply 2 and print
def multiply_2_and_return(x, y)
  x * y
end
# -----------------------------------------------------------

# Exercise 25 - Multiply 4 and return
def multiply_4_and_return(a,b,c,d)
  multiply_2_and_return(a, b) * multiply_2_and_return(c, d)
end
# -----------------------------------------------------------

# Exercise 26 - Show a profile with more
def create_header(my_name)
  # TODO: This profile should provide more information based on the
  # person's name, age, and gender
  puts "<h1>#{my_name}</h1>"
end

def create_image(image_file)
  # TODO: This profile should provide more information based on the
  # person's name, age, and gender
  puts "<img src=\"#{image_file}\">"
end

def create_paragraph(age, gender, job)
  puts "<p>I am a #{my_age}-year-old #{my_gender} who works as a #{job}.<p>"
end

def create_profile(name, age, gender, job, image_file)
  create_header(name)
  create_image(image_file)
  create_paragraph(age, gender, job)
end
# -----------------------------------------------------------

# Exercise 27 - Access profile
def can_i_access_your_profile(is_friend)
  if is_friend
    puts "Yes"
  else
    puts "No"
  end
end
# -----------------------------------------------------------

# Exercise 28 - Access profile with city
def can_i_access_your_profile(is_friend, my_city, their_city)
  if is_friend
    puts "Yes"
  elsif my_city == their_city
    puts "Maybe"
  else
    puts "No"
  end
end
# -----------------------------------------------------------

# Exercise 29 - Access profile with school
def can_i_access_your_profile(is_friend, my_city, their_city, their_school)
  if is_friend
    puts "Yes"
  elsif their_school == "MakerSquare"
    puts "HELL YEAH!"
  elsif my_city == their_city
    puts "Maybe"
  else
    puts "No"
  end
end
# -----------------------------------------------------------

# Exercise 30 - Access profile with school
def can_i_access_your_profile(is_friend, my_city, their_city, their_school)
  if is_friend
    is_friend
  elsif my_city == their_city && their_school == "MakerSquare"
    puts "Yes"
  elsif my_city == their_city
    puts "Mehh"
  else
    puts "Naw"
  end
end
# -----------------------------------------------------------

# Exercise 31 - Calculator 1
def calculator_1(operator, num1, num2)
  # See exercise 36
end
# -----------------------------------------------------------

# Exercise 32 - Movies 1
def is_movie_available_1(name)
  movies = ["Thor", "Captain", "Hulk", "Iron Man"]
  if movies.include?(name)
    return "#{name} is currently playing at the movies."
  else
    return "#{name} is not currently playing at the movies."
  end
end
# -----------------------------------------------------------

# Exercise 33 - Movies 2
def is_movie_available_2(name, time)
  movie_timings = {
    "Thor" => [100, 400, 600, 1200, 1400, 1830],
    "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
    "Hulk" => [ 1200, 1500, 1830, 2200],
    "Iron Man" => [1315, 1645]
  }

  movie_timings[name].include?(time)
end
# -----------------------------------------------------------

# Exercise 34 - Movies 3
def is_movie_available_3(name, time)
  movie_timings = {
    "Thor" => [100, 400, 600, 1200, 1400, 1830],
    "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
    "Hulk" => [ 1200, 1500, 1830, 2200],
    "Iron Man" => [1315, 1645]
  }

  movie_timings[name].each do |t|
    return t unless time>t
  end
end
# -----------------------------------------------------------

# Exercise 35 - Movies 4
def is_movie_available_4(time)
    # TODO: Return a dictionary of movies being played mapped to a list of movie timings
    # that the user can go to
    # Only add the move as a key if a proper timing is available
    movie_timings = {
        "Thor" => [100, 400, 600, 1200, 1400, 1830],
        "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
        "Hulk" => [ 1200, 1500, 1830, 2200],
        "Iron Man" => [1315, 1645]
    }
    movies = {}
    movie_timings.each_pair do |flix, times|
      times.keep_if {|t| time <= t}
      movies[flix] = times
    end

    return movies
end
# -----------------------------------------------------------

# Exercise 36 - Calculator 2
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
# -----------------------------------------------------------

# Exercise 37 - Log in
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
# -----------------------------------------------------------

# Exercise 38 - Sign up
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
# -----------------------------------------------------------

# Exercise 39 - Password confirmation
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
# -----------------------------------------------------------

# Exercise 40 - Guess 1
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

# -----------------------------------------------------------

# Exercise 41 - Guess 2
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
# -----------------------------------------------------------

# Exercise 42_1 - Guess 3
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
# -----------------------------------------------------------

# Exercise 42_2 - Guess 4
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
# -----------------------------------------------------------

# Exercise 43 - Warmer or Colder
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
# -----------------------------------------------------------

# Exercise 44 - Not an exercise
# -----------------------------------------------------------

# Exercise 45 - Countdown
def countdown(count)
    # print out numbers from count to 0
    puts count
    puts count -= 1 until count == 0
end
# -----------------------------------------------------------

# Exercise 46 - Countup
def countup(count)
    # opposite of countdown
    counter = -1
    puts counter until (counter += 1) == count
    puts count
end
# -----------------------------------------------------------

# Exercise 47 - Divisibility by 3
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
# -----------------------------------------------------------

# Exercise 48-53 - Chimpanzees
class Chimpanzee
  
  attr_accessor :bananas, :is_clean

  def initialize
    @bananas = 0
    @is_clean = true
  end

  def how_many_bananas?
    @bananas
  end

  def yell
    puts "Ooh ooh ooh"
  end

  def eat
    puts "Yumm"
    puts "Relieved..."
    @is_clean = false
    @bananas += 1
  end

  def groom
    if @is_clean
      "Nothing to do"
    else
      puts "Taking a shower."
      @is_clean = true
    end
  end

end
# -----------------------------------------------------------

# Exercise 54-55 - MKSStudent
class MKSStudent
  attr_accessor :name, :drinks

  def initialize(name)
    @name = name.to_s
    @drinks = 0
  end

  def write_code_for(purpose)
    "#{@name} is writing code for #{purpose.to_s}."
  end

  def drink(type, temp)
    @drinks += 1
    puts "#{@name} is drinking #{temp.to_s + ' ' + type.to_s}."
    if bathroom_break
      @drinks = 0
      puts "You should take a bathroom break."
    end
  end

  def bathroom_break
    if @drinks >= 3
      true
    else
      false
    end
  end

end
# -----------------------------------------------------------

# Exercise 56-60 - Roommate
class Roommate
  # class level

  @@total_drinks = 0
  @@total_roommates = 0
  @@roommates = []

  def self.total_drinks
    @@total_drinks
  end

  def self.total_roommates
    @@total_roommates
  end

  def self.average_beers
    @@total_drinks / @@total_roommates.to_f
  end

  def self.roommates
    @@roommates
  end

  def self.take_a_round
    @@roommates.each do |mate|
      mate.drink_beer
    end
  end

  def self.most_drinks
    sorted = @@roommates.sort { |r1, r2| r2.beer_count <=> r1.beer_count }
    roommate_with_most = sorted[0]
    "Roommate #{roommate_with_most.name} drank #{roommate_with_most.beer_count} drinks"
  end

  # instance level

  attr_accessor :name, :beer_count

  def initialize(name="")
    @beer_count = 0
    @@total_roommates += 1
    @@roommates << self
    @name = name
  end

  def drink_beer
    puts "yumm!!!"
    @@total_drinks += 1
    @beer_count += 1
  end

  # Creating the objects below and making them drink beer
  # to avoid having to type it every time and have a starting point

  mate1 = Roommate.new('Joe')
  mate2 = Roommate.new('Juan')
  mate3 = Roommate.new('Julie')

  3.times {mate1.drink_beer}
  5.times {mate2.drink_beer}
  4.times {mate3.drink_beer}
end
# -----------------------------------------------------------

# Exercise 61-66 - Bank Account
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
# -----------------------------------------------------------

# Exercise 67-74 - Bank Account extensions Missing
# -----------------------------------------------------------
# -----------------------------------------------------------
# -----------------------------------------------------------
# -----------------------------------------------------------
# -----------------------------------------------------------
# -----------------------------------------------------------
# -----------------------------------------------------------
# -----------------------------------------------------------

# Exercise 75-79 - Airplane
class Airplane
  
  # ------ Class level -------- 
  @@city_to_airplane_hash = {}

  def self.get_hash
    @@city_to_airplane_hash
  end

  def self.can_i_fly(origin, destination)
    cities = []
    air = 0
    @@city_to_airplane_hash.each_pair do |name, plane|
      cities << plane.city
      air = plane if plane.city == origin.to_s.capitalize
    end
    if cities.include?(origin.to_s.capitalize) && !cities.include?(destination.to_s.capitalize)
      air
    else
      nil
    end
  end

  # ------ Instance level ------
  attr_accessor :city, :capacity

  def initialize(city, capacity)
    new_city = city.capitalize
    until @@city_to_airplane_hash.has_key?(new_city) == false
      puts "Please specify a different city:"
      new_city = gets.chomp.to_s.capitalize
    end
    @city = new_city
    @capacity = capacity.to_i
    @@city_to_airplane_hash[new_city] = self
  end

  def fly_to_city(city)
    occupied = false
    @@city_to_airplane_hash.each_pair do |name, plane|
      # puts plane.city
      if plane.city == city.to_s.capitalize
        puts "There's already a plane at #{city.capitalize}"
        occupied = true
      end
    end
    self.city = city.to_s.capitalize if occupied == false
  end

end

# Exercise 80-81 Missing
# -----------------------------------------------------------
# -----------------------------------------------------------

# Exercise 82 - Minesweeper
require 'set'
system "clear"

puts "-------------- Welcome to Minesweeper --------------"
puts
puts "How big do you want your minefield to be? (Rows x Columns)"

field_size = gets.upcase.strip.split("X")
minefield = []
result = false
rows = field_size[0].to_i
columns = field_size[1].to_i

rows.times do #Loop 'Rows' number of times based on user input
  minefield << Array.new(columns,false) #Fill the array with new arrays of 'Columns' size with false values
end

def display(minefield) #This method displays the 
  puts
  # minefield.each {|item| puts "|#{item}|"} #Just printing to check
  minefield.each do |item|
    item.each do |it|
      if it == false
        print "0 "
      else
        print "X "
      end
    end
    print "\n"
    STDOUT.flush
  end
  puts
end

def game_over(minefield, result)
  system "clear"
  puts "----------------------------"
  if result
    puts "         YOU WIN!!"
  else
    puts "      You hit a mine!"
  end
  puts "         GAME OVER"
  puts "----------------------------"
  puts "This was your minefield"
  display(minefield)
end

display(minefield)

number_of_spaces_on_field = minefield.length * minefield[0].length
number_of_mines_on_field = 0

loop do
  puts "How many mines do you want in your field?"
  number_of_mines_on_field = gets.chomp.to_i
  if number_of_mines_on_field >= rows * columns
    puts "\nCan't fit that many mines. Try less than #{columns*rows}."
  else
    break
  end
end

mines_on_field = Set.new

#This code will loop, over and over, kind of like an "each"
#until we have the number of mines the user requested. 

until mines_on_field.size == number_of_mines_on_field #Until the set size equals the amount provided by the user
  space_number_for_mine = rand(number_of_spaces_on_field) #Generate an index for each mine's position randomly
  mines_on_field << space_number_for_mine #Add that index to the set of mines' positions
end

mines_on_field.each do |mine_number| #Iterates through the set of mines' positions
  minefield_row_number = mine_number / columns
  minefield_column_number = mine_number % columns
  minefield[minefield_row_number][minefield_column_number] = true
end

def stored_coor(visited, minefield) #This method gets a coordinate in (column,row) format
        #and returns an array of coordinates in int format
  puts
  puts "Please enter a coordinate to uncover (row,column):"
  answer = gets.downcase
  if answer.include?("cheat")
    display(minefield)
    stored_coor(visited, minefield)
  else
    coordinate = answer.split(",")
    coordinate.map!(&:to_i) #This is the method that substitutes strings for ints inside the array
    coordinate.map!{|item| item - 1}#We have accounted for the offset between user input and Ruby's numbering system.
    if visited.include?(coordinate)
      puts "You're kind of absentminded, you've already been there!"
      stored_coor(visited, minefield)
    else
      return coordinate
    end
  end
end

visited = []
response = stored_coor(visited, minefield)
visited << response

until minefield[response[0]][response[1]] == true #We're using the method stored_coor to access the coordinate provided by the user
  puts
  puts "No mines hit. #{columns*rows - number_of_mines_on_field - visited.length} to go!"
  if visited.length == columns*rows - number_of_mines_on_field
    result = true
    break
  else
    result = false
  end
  response = stored_coor(visited, minefield)
  visited << response
end

game_over(minefield, result)
# -----------------------------------------------------------