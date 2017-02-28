# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, hash?]


def create_list(item)
	list = {}
	new_items = item.split(' ')
	new_items.each do |one_item|
		list[one_item] = 0
	end
	list
end
#created_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create new item for the grocery list
# output: Grocery list

def add_items(list, item_name, quantity=0)
	list[item_name] = quantity
	list
end
#p add_items(created_list, "milk")

# Method to remove an item from the list
# input: list and item_name
# steps: find item and delete it
# output: Grocery list 

def remove_item(list, item_name)
	if list.has_key?(item_name)
		list.delete(item_name)
	end
	list
end
#p remove_item(created_list, "milk")


# Method to update the quantity of an item
# input: list item_name new_quantity
# steps: find_item updated_quantity 
# output: Grocery list

def updated_quantity(list, item_name, quantity)
	list[item_name] = quantity
	list
end
#p updated_quantity(created_list, "apples", 3)


# Method to print a list and make it look pretty
# input: list 
# steps: make it look pretty
# output: list

def pretty_list(list)
	puts "Grocery List".center(30)
	list.each do |item, quantity|
		puts "#{item} ".ljust(20) + "#{quantity}".rjust(10)
	end
end
#pretty_list(created_list)

created_list = create_list("Lemonade Tomatoes Onions")
add_items(created_list, "Ice Cream", 4)
updated_quantity(created_list, "Lemonade", 2)
updated_quantity(created_list, "Tomatoes", 3)
updated_quantity(created_list, "Onions", 1)
remove_item(created_list, "Lemonade")
updated_quantity(created_list, "Ice Cream", 1)
pretty_list(created_list)



#Release 4 Reflect
#1. What did you learn about pseudocode from working on this challenge?
# Psudocode is helpful it makes it so much easier to start on a new problem by making it more like plain English

#2. What are the tradeoffs of using arrays and hashes for this challenge?
#  We used hashes because it was eaiser to create a grocery list with a list, items and quantity of items

#3. What does a method return?
# A method returns a value inside the method

#4. What kind of things can you pass into methods as arguments?
# You can pass data types like strings integers bools, arrays hashes

#5. How can you pass information between methods?
 # You can use the methods parameters to pass arguments into other methods. 

 #6. What concepts were solidified in this challenge, and what concepts are still confusing?
 # The concept of passing multiple arguments in a method is strting to solidify. Sometimes 
 # it can still be confusing. I am not sure what to put in for the arguments sometimes. 


