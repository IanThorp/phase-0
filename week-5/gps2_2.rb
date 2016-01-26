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

def add_item(list, item, quantity = 1)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item)
end

def update_item(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  puts "GROCERY LIST"
  list.each{|key, value| puts "#{key} : #{value}"}
end


# What did you learn about pseudocode from working on this challenge?

#   I learned, with the help from my guide, how to make much simpler pseudocode. It can still be in plain english, but doesn't need to go to crazy with lenght and complexity.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

#   With arrays, it seems like it would have been much harder to keep track of quantity for each of the items as well. With hashes, this was a much easier process, as I could use the key for the item name and the value for the quantity.

# What does a method return?

#   A method returns whatever value it is told to return. In the case of my methods, most of them return the grocery_list hash.

# What kind of things can you pass into methods as arguments?

#   The argument can be an object or a class.

# How can you pass information between methods?

#   You just need to return an object or class. You can than use that object or class as an argument for the next method.

# What concepts were solidified in this challenge, and what concepts are still confusing?

#   I still needed a little help working with hashes. So creating an modifying a hash definitely was solidified for me. Also, using ruby docs gets easier and easier everytime I use it.