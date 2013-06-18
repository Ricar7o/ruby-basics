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