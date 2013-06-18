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