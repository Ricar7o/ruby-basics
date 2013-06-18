def show_a_profile
    # TODO: Print out html code to show your profile
    # Include a header, a paragraph and an image
    # Note that you're printing the html code inside of a string
    puts "<h1>Ricardo Cervantes</h1>"
    puts "<p>This is my profile and below is my pic.<p>"
    puts "<img src=\"RCA.jpg\">"
end

def show_a_profile_with_pic(my_name)
	# This time include the person's name which has been passed in
    # as an argument.
    puts "<h1>#{my_name}</h1>"
    puts "<p>This is my profile and below is my pic.<p>"
    puts "<img src=\"RCA.jpg\">"
end