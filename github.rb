def garage_inventory
	inventory = []
	inventory << {name: 'computer', price: '100.00', quantity: 1}
	inventory << {name: 'book', price: '3.50', quantity: 5}
	puts " Item | Price | Quantity "
	inventory.each do |item|
		puts "#{item[:name]} | #{item[:price]} | #{item[:quantity]}"
	end

	puts "Total inventory = #{inventory.count} items"
	counter = 0
	inventory.each do |item|
		counter += 1
		puts "#{item[:price]} * #{item[:quantity]}"
	end
end