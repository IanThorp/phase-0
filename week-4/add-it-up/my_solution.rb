# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [ with: Pietro Martini].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:array
# Output:sum
# Steps to solve the problem.
#  define the method, initialize the sum at 0, use .each to add each array value to the sum

# 1. total initial solution
def total(array)
 sum = 0
 array.each { |i| sum += i}
 return sum
end


# 3. total refactored solution

array.reduce(:+)

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:array
# Output:sentence
# Steps to solve the problem.
# Initialize the sentence at empty, capitalize the first word, perform array.each to add each array item to the sentence, add a space unless it is the last item.

# 5. sentence_maker initial solution
def sentence_maker(array)
  sentence = ""
  array[0].capitalize!
  array.each do |i|
    sentence << "#{i}"
    unless i == array.last
      sentence << " "
    end
  end
  sentence << "."
  return sentence
end



# 6. sentence_maker refactored solution

def sentence_maker(array)
   sentence = array.join(" ")
   sentence << "."
   sentence.capitalize!
end