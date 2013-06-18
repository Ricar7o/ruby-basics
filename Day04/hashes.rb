system "clear"

def exercise1
	smith_family = ["John", "Jane", "Jacob"]
	last_name = "Smith"
	smith_family.collect! {|person| person = person + " " + last_name}
	return smith_family
end

def exercise2
	person = {:height => 1.77, :name => "Ricardo Cervantes", :eye_color => "brown"}
	test = {}
	test[:fave_movie] = "Inception"

	hash1 = {"XBox" => "Microsoft", "PS" => "Sony"}
	hash2 = {"Macbook" => "Apple", "Windows 8" => "Microsoft"}
	
	merged_hash = hash1.merge(hash2)

	merged_hash.each_pair {|key, value| puts "#{key} is made by #{value}."}

	people = {"name" => "bob", :job => "builder", 21 => "current_age"}
	puts people["name"]
	puts people.values
	puts
end

def exercise3
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

def exercise4
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

def exercise5
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
