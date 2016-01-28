# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#   positive integer
# What is the output? (i.e. What should the code return?)
#   a string of the number, with commas every 3 digits
# What are the steps needed to solve the problem?
#   check IF integer is >= 1000
  #   IF true, seperate each digit of number into an array
  # Insert a comma every third index, starting from last index
# return the number with a TO STRING method called on it.



# 1. Initial Solution
def separate_comma(integer)
  if integer >= 1000
    number_array = integer.to_s.split("").reverse
    counter = 0
    array_for_reverse = []
    number_array.each do |digit|
      if counter % 3 == 0 && counter != 0
        array_for_reverse << ","
      end
      array_for_reverse << digit
      counter += 1
    end
    final = ""
    array_for_reverse.reverse.each do |digit|
      final << digit
    end
  else
    final = integer.to_s
  end
  return final
end



# 2. Refactored Solution
def separate_comma(integer)
  if integer >= 1000
    number_array = integer.to_s.split("").reverse
    count = 0
    number_array.each_with_index do |i, index|
      if index  % 3 == 0 && index != 0 && index + count < number_array.length
        number_array.insert(index + count, ",")
        count += 1
      end
    end
    final = number_array.join("").reverse
  else
    final = integer.to_s
  end
end



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

#   I went with the first approach that I considered. So I knew that I had to insert a comma into this integer. The only way I knew how to insert was through an array. So I had to convert my integer to an array, than insert this ",".  Iterating through each of them was the easiest way to figure out exactly where I was, so the each method would be used. Than just had to convert it to a string.

# Was your pseudocode effective in helping you build a successful initial solution?

#   Pseudocode definitely helped a lot. The more familiar I get with all these methods in ruby, the easier pseudocode is. I actually have a good idea what I can do with Ruby before actually looking up the ruby-docs.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

#   My code basically stayed the same. I used the method insert just to make the code a little easier to understand. Also the method each_with_index was helpful in keeping track of where to put the commas. Using the ruby documentation is getting easier as I do more of this. I can read the documentation on a method now and immediatley know how to implement it. Not much experimentation is necessary now.

# How did you initially iterate through the data structure?

#   I itereated through it with the each method. I had to keep a counter to know exactly where I was.

# Do you feel your refactored solution is more readable than your initial solution? Why?

#   Yes, it is slightly shorter. I don't create as many variables, which could lead to confusion. I believe the current variables even have better names so they are a little easier to understand.