# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, hash?]


def create_list(item)
	grocery_list = {}
	new_items = item.split(' ')
	new_items.each do |one_item|
		grocery_list[one_item] = 0
	end
	grocery_list
end
created_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create new item for the grocery list
# output: Grocery list

def add_items(list, item_name, quantity=0)
	list[item_name] = quantity
	list
end
p add_items(created_list, "milk")

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: