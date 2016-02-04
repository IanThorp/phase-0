# Your Names
# 1) Ian Thorp

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

# calculate number of servings need to make another baked item.
# How many servings we are short
# How many servings to make another baked item
# new item servings minus servings short will be how many servings we need to add to make a new item

def serving_size_calc(item_to_make, num_of_servings)
  baked_goods = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   Check baked_goods for the item (item_to_make) that is input in argument.
#   does a negative count on error_counter variable
   raise ArgumentError.new("#{item_to_make} is not a valid input") if !baked_goods.has_key?(item_to_make)

# If item is not in baked_goods hash, raises an argument saying item(item_to_make) is not valid
# Create new variable that is value of key that is input in argument
  serving_size = baked_goods[item_to_make]
# Store number of left over ingredients after making as many as possible of item in variable.
  num_of_servings_short = num_of_servings % serving_size
# Checking if any ingredients remain. If none remain returns how many and of what item. If some remain, reutrns how many, what item, and remaining ingredients.
  if num_of_servings_short == 0
    "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}, you are short #{num_of_servings_short} servings. If you would like to add #{num_of_servings - num_of_servings_short} servings you can make another #{item_to_make}."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


# What did you learn about making code readable by working on this challenge?

#   I learned that I can put an if statement at the end of an ArgumentError line. This is a different way to do it, and I think more readable.

# Did you learn any new methods? What did you learn about them?

#   Not necessarily a new method, but I did learn that you can use ! after if to see if a statement is false.

# What did you learn about accessing data in hashes?

#   I did not learn much about accessing data in hashes. This challenge to not really bring forth any new techniques.

# What concepts were solidified when working through this challenge?

#   Exact vocabulary and how to change code to be more readable was helped a lot. Also, things like ideas for what a good variable name were very helpful.