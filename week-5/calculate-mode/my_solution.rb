# Calculate the mode Pairing Challenge

# I worked on this challenge [ with: Robbie Santos]

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
#    array(numbers or strings)
# What is the output? (i.e. What should the code return?)
#   array (most frequent values)
# What are the steps needed to solve the problem?
#  count unique objects in array
#   create hash
#   add key value pair of objects in array and number of occurences
#  add highest value pairs to array
#  return new array



# 1. Initial Solution
def mode(original_array)
  frequency = Hash.new(0)
   original_array.each{ |i| frequency[i] += 1}
  new_array = frequency.max_by { |x,y| y }
  mode_solution = new_array[1]
  result = []
  frequency.each do |key,value|
    if value == mode_solution
      result << key
    end
  end
  return result
end







# 3. Refactored Solution

def mode(original_array)
  frequency = Hash.new(0)
  original_array.each do |i| frequency[i] += 1 end
  result = Hash[frequency.select{|key, value| value == frequency.values.max}]
  return result.keys.to_a
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

#   We used hashes for most of the work. A hash allowed us to use the key as the actual string or number and the value as the number of times it occured in the array.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

#   I would say it was a little bit harder. We still did get it broken down, but there were definitely more steps, so it took a little more work to get done.

# What issues/successes did you run into when translating your pseudocode to code?

#   Our pseudocode looked like it was very simple, but actually translating it proved to be a little more difficult. Mainly, determining what methods would do what we wanted was the tough part. Lots of research was involved.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

#   We used the each method to iterate through everything and the max_by method to organize it into order of how it was repeated. When refactoring, we were als able to make it a bit easier to read and shorter by using the select method and values and max method. The values and max method were a little difficult to implement at first, but we discovered it was because we lacked an argument for it. Easy fix.