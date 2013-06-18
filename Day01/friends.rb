# puts "How many friends do you want to list?"
# counter = gets.chomp.to_i
# amigos = []
# index = 1

# counter.times do
# 	puts "Name your ##{index} friend"
# 	amigos << gets.chomp
# 	index += 1
# end

# puts "You named #{counter} friend(s) - in alphabetical order:"
# counter = 1

# amigos.sort.each do |amigo|
# 	puts counter.to_s + ". " + amigo
# 	counter += 1
# end

amigos = []
puts "List some of your friends (sepparated by a comma):"
amigos = gets.split(",")
index = 1

puts "You listed #{amigos.length} friends. Here they are in alphabetical order:"
amigos.sort.each do |friend|
	puts index.to_s + ". " + friend.strip.chomp + "."
	index += 1
end