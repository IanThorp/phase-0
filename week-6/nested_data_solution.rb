 RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array [1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
#============================================================

p hash [:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data [:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#number_array.flatten.each {|element| p element + 5}

number_array.each_with_index do |item,index|
  if item.is_a? Array
    item.collect! { |item| item += 5 }
  else
    number_array[index] += 5
      end
  end
  p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_ly(startup_names)
startup_names.each do |item|
  if item.is_a? Array
    add_ly(item)
  else
    item << "ly"
    end
  end
end
 p add_ly(startup_names)

# Reflection
# What are some general rules you can apply to nested arrays?

#   In order to get to your goal index in a nested array, you must go through each index one by one. Always remember to start with zero index.

# What are some ways you can iterate over nested arrays?

#   flatten is a good method to iterate over an entire array, nested or not. Other enumerable methods work just as well too, like collect, and each. Using an if statement to check if an item is an array is a very good way to selectively use teh each method, and otherwise do something to the elements of the array.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

#   I mainly reused methods I was familiar with. I did have to do a little more research on those methods to figure out exactly how they work with nested arrays. I thought that the arrays I knew about were sufficient to work with these arrays.