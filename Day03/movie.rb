def is_movie_available_1(name)
	movies = ["Thor", "Captain", "Hulk", "Iron Man"]
	if movies.include?(name)
		return "#{name} is currently playing at the movies."
	else
		return "#{name} is not currently playing at the movies."
	end
end

def is_movie_available_2(name, time)
  movie_timings = {
    "Thor" => [100, 400, 600, 1200, 1400, 1830],
    "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
    "Hulk" => [ 1200, 1500, 1830, 2200],
    "Iron Man" => [1315, 1645]
  }

  movie_timings[name].include?(time)
end

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
