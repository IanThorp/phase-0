# Pad an Array

# I worked on this challenge [with: Michael Wang ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#   array, length of array, padding object
# What is the output? (i.e. What should the code return?)
#   new array with padding
# What are the steps needed to solve the problem?
#   check original array vs padded size
#   create new array equal to original
#   IF correct, do nothing
#  ELSE, add padding to end of new array
#  RETURN new_array

# What is the input? (destructive)
#   array, length of array, padding object
# What is the output? (i.e. What should the code return?)
#  modified original array with padding
# What are the steps needed to solve the problem?
#  check array vs padded size
#  IF correct, do nothing
#  ELSE, add padding to end of original array
#  RETURN modified original array with padding

# 1. Initial Solution

def pad(array, min_size, value = nil)
  new_array = []
  i = 0
  while i < array.length
    new_array << array[i]
    i += 1
  end
  if array.length < min_size
    (min_size - array.length).times do
    new_array << value
    end
  end
  return new_array
end

def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    (min_size - array.length).times do
      array << value
    end
  end
  return array
end

# 3. Refactored Solution

def pad(array, min_size, value = nil)
  new_array = Array.new(array)
  difference = min_size - array.length
  difference.times {new_array << value}
  return new_array
end

def pad!(array, min_size, value = nil)
#destructive
  difference = min_size - array.length
  difference.times {array << value}
  return array
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

#   Yes, we were very successful breaking it down in pseudocode.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

#   For the most part it was a pretty easy process. There were some small parts that were a little tough though.  The toughest part was figuring out how to translate make a new array that was a copy of the old array into code. We ended up just pointing to the same address at first, using new_array = old_array.  This did not work as well as we had hoped. We ended up with a long winded strategy of creating a new array, than taking each element of the old array and putting it in one at a time. This was a little ugly, but worked.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

#   Initially, the problem was with our new_array = old_array command, which turns out is a shallow copy where we needed a deep copy. The difference between a shallow copy and a deep copy is something that I hadn't had to worry about in any code that I had written so far, so a shallow copy had always been sufficient.  This caused our non-destructive solution to actually be destructive and change the original variable. We ended up with a long winded strategy, as mentioned in the question above, which basically took each entry into the the old array and individually put it into the new array. This technically passed the tests but looked ugly.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

#   Oh yes!  The one the helped the most was the "new" method. I knew previously it could be used to make an empty array, but I did not know it could be used to copy one array into a different array. This cleaned up the code nicely.

# How readable is your solution? Did you and your pair choose descriptive variable names?

#   The solution is very readable.  Variable names are descriptive and the code only has necessary lines. It is pretty short to boot, which often helps improve readability.

# What is the difference between destructive and non-destructive methods in your own words?

#   A non-destructive method can really be any kind of method, it just has a special relation to its destructive version. The destructive side of a method probably does something a little more powerful that requires caution. The easiest example is that a non-destructive method will create a new variable to hold the value of the action it performed, where as a destructive method will modify the existing variable. This is just an example, and each method can be very different.  Basically, a destructive method is labeled such as more of a "Heads up!", something potentially dangerous happens when you do this. Make sure you know what you are doing.