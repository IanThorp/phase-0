# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # set default quantity
  # print the list to the console (use our print method)
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: Add item name to list and quantity.
# output: hash(list)

# Method to remove an item from the list
# input: item name
# steps: remove item from list
# output: hash

# Method to update the quantity of an item
# input: item name and new quantity
# steps: choose the item.  Update the quantity
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps: print out list
# output: hash

def create_list(list)
  print_list(list)
  return list
end

def add_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item)
end

def update_item(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  puts list
end


grocery_list = create_list({"Peaches" => 2, "Beans" => 3})
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomato", 3)
add_item(grocery_list, "Onion", 1)
add_item(grocery_list, "Ice Cream", 4)
print_list(grocery_list)
remove_item(grocery_list, "Lemonade")
print_list(grocery_list)
update_item(grocery_list, "Ice Cream", 1)
print_list(grocery_list)

