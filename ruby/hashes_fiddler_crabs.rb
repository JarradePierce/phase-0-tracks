# create a list for a interior designer to enter the details

#must display the client's name, age, number of children, decor theme, 

#Prompt the designer/user for all of this information.

#Convert any user input to the appropriate data type.

#Print the hash back out to the screen when the designer has answered all of the questions.

#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! 


def designer_list(name, age, children, theme)
	list = {}

	list[:name] = name
	list[:age] = age
	list[:children] = children
	list[:theme] = theme
	puts list
end

def customer_form
	puts "Enter your information"
	puts "Whats your name?"
	name = gets.chomp
	puts "Name: #{name}"
	puts "How old are you?"
	age = gets.chomp
	puts "Age: #{age}"

	puts "Do you have children?"
	children = gets.chomp
	if children == "yes"
		children = true
	else
		children = false
	end

	puts "What theme would you like?"
	theme = gets.chomp
	puts "Theme: #{theme}"

	puts "Are you sure this is the correct theme?"
	answer = gets.chomp
	if answer == "no"
		puts "Enter a new theme"
		theme = gets.chomp
		designer_list(name, age, children, theme)
	else
		designer_list(name, age, children, theme)
	end
end
puts customer_form


