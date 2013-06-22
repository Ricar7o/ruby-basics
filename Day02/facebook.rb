user = {
	:name => "Ricardo Cervantes",
	:companies => [
		{
			:name => "MakerSquare",
			:address => {
				:street => "716 Congress Ave.",
				:city => "Austin",
				:state => "TX"
			}
		},
		{
			:name => "University of Texas",
			:address => {
				:street => "100 University Dr.",
				:city => "Austin",
				:state => "TX"
			}
		}
	]
}

# puts "#{user[:name]} studied at these companies:"
# user[:companies].each do |company|
# 	puts company[:name]
# 	puts company[:address].values
# end

# puts "#{user[:name]} studied at these companies:"
# user[:companies].each do |company|
# 	puts company[:name]
# 	puts company[:address][:street]
# 	puts company[:address][:city] + ", " + company[:address][:state]
# 	puts
# end

puts "#{user[:name]} studied at these companies:"
user[:companies].each_with_index do |company, index|
	puts (index+1).to_s + ") " + company[:name]
	puts company[:address][:street]
	puts company[:address][:city] + ", " + company[:address][:state]
	puts
end

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