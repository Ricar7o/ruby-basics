system "clear"

def exercise1
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

def exercise2
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