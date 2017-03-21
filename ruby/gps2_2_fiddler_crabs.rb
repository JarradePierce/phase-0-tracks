# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# => hash
# steps: 
  #create a empty hash
  #split the item
  # create a loop that inserts each item into hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(item)
	list = {}
	new_items = item.split(' ')
	new_items.each do |one_item|
		list[one_item] = 0
	end
	list
end
#create_list("carrots apples pizza")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Create a new item
# create method add_item
#takes list, item_name, quantity
# output: list

def add_item(list, item_name, quantity)
	list[item_name] = quantity
	list
end

new_list = create_list("carrots apples pizza")
add_item(new_list, "ice cream", 1)
#puts new_list

# Method to remove an item from the list
# input: list, item
# steps: if the list has the item remove item from list
# output: updated list with removed item

def remove_item(list, item_name)
	if list.include?(item_name)
		list.delete(item_name)
	end
end

#puts new_list
#remove_item(new_list, "carrots")
#puts new_list

# Method to update the quantity of an item
# input: list, item_name, quantity
# steps: if list include item_name update quantity
# output: updated list with new quantities

def update_quantity(list, item_name, quantity)
	if list.include?(item_name)
		list[item_name] = quantity
	end
	list
end

update_quantity(new_list, "carrots", 5)
#puts new_list

# Method to print a list and make it look pretty
# input: list
# steps: seperate by lines, iterate through each key and value in the list and print the list
# output: list that is seperated by lines

def nice_list(list)
	puts "Grocery list"
	puts "_" * 20
	list.each do |key, value|
		puts "#{key}: #{value}"
	end
end

nice_list(new_list)


















