# create a list for a interior designer to enter the details

#must display the client's name, age, number of children, decor theme, 

#Prompt the designer/user for all of this information.

#Convert any user input to the appropriate data type.

#Print the hash back out to the screen when the designer has answered all of the questions.

#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! 

def update_details(update)
	puts "What theme would you like?"

	update = gets.chomp
end

def design_details
	designs = {}
	p "Home Decorator!"
	p "What is the clients name?"
	client_name = gets.chomp

	p "What the clients age?"
	age = gets.chomp.to_i

	p "Do you have children?"
	children = gets.chomp
	if children == "no"
		children = false
	else
		children = true
	end

	p "What type of theme would you like?"
	theme = gets.chomp


	designs[:name] = client_name
	designs[:client_age] = age
	designs[:has_children] = children
	designs[:theme_type] = theme

	puts designs

	puts "are you sure you want this theme?"
	is_sure = gets.chomp

	if is_sure == "yes"
		puts "ok looks good!"
	else
		designs[:theme] = update_details(theme)
	end
	puts designs
end
design_details














