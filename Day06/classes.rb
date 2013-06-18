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