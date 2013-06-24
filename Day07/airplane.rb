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