# Pseudocode

# What is the input?
  # the input will be an array of names

# What is the output?
  # output will be a hash, keys will be accountability group number, and values will be an array of the names of members.

# Write some pseudocode for it.
  # Create number of arrays for how many people you have.
  # Number of arrays should allow every array to have 4 or 5 people, but at least 3 people.
  # Iterate over arrays and insert one person at a time
  # Create Hash with number of keys equal to number of arrays
  # Set each array as the value for a different hash key.
  # PUTS each hash, key pair on their own line.

# Initial Solution
def make_groups(name_array)
  if name_array.length % 5 != 0
    num_of_groups = (name_array.length / 5) + 1
  else
    num_of_groups = name_array.length / 5
  end
  accountability_groups = Hash.new
    num_of_groups.times do |x|
      accountability_groups ["Accountability_Group_#{x + 1}".to_sym] = []
    end
  while name_array.length > 0
    accountability_groups.keys.each do |x|
      accountability_groups[x] << name_array.pop
      if name_array.length == 0
        break
      end
    end
  end
    accountability_groups.keys.each do |x|
      puts "START"
      puts x
      puts accountability_groups[x]
      puts "END"
      puts " "
    end
end

# Add complexity
def make_groups(name_array)
  if name_array.length % 5 != 0
    num_of_groups = (name_array.length / 5) + 1
  else
    num_of_groups = name_array.length / 5
  end
  accountability_groups = Hash.new
    num_of_groups.times do |x|
      accountability_groups ["Accountability_Group_#{x + 1}".to_sym] = []
    end
  random_array = []
  name_array.map.with_index do |x, i|
    random_index = rand(0...name_array.length)
    while random_array[random_index] != nil
      random_index = rand(0...name_array.length)
    end
    random_array[random_index] = "" << x
  end
  while random_array.length > 0
    accountability_groups.keys.each do |x|
      accountability_groups[x] << name_array.pop
      if name_array.length == 0
        break
      end
    end
  end
    accountability_groups.keys.each do |x|
      puts "START"
      puts x
      puts accountability_groups[x]
      puts "END"
      puts " "
    end
end

#Refactor Solution
def make_groups(name_array)
  if name_array.length % 5 != 0 ;num_of_groups = (name_array.length / 5) + 1
  else ; num_of_groups = name_array.length / 5 end
  acc_groups = Hash.new
    num_of_groups.times {|x| acc_groups ["Accountability_Group_#{x + 1}".to_sym] = [] }
  name_array.shuffle!
  while name_array.length > 0
    acc_groups.keys.each do |x|
      acc_groups[x] << name_array.pop
      if name_array.length == 0; break end
    end
  end
    acc_groups.keys.each do |x|
      puts "\n #{x}"
      puts acc_groups[x]
    end
    return acc_groups
end

# Run the code!

sealions_names = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

make_groups(sealions_names)

#Reflection

# What was the most interesting and most difficult part of this challenge?

#   The most difficult part was figuring out how to make all of the groups as close to even as possible. The most interesting had to have been discovering that there is a shuffle method to randomize the array. That seems useful

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

#   I definitely feel like I am improving and quickly. I know more and more about how ruby operates. That helps me know exactly what angle I should attack a problem from.

# Was your approach for automating this task a good solution? What could have made it even better?

#   I think my approach was a very good solution. I could have added maybe another feature or two. For example, what happens if someone leaves the cohort. Also, how can I save the results of previous code.

# What data structure did you decide to store the accountability groups in and why?

#   I decided to store it each individual group in an array, which was inside of a hash. This allowed me to keep all of the groups in one structure, but also keep each individual group seperate.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

#   I learned about the shuffle method. This helped me randomize the array so that the output would be different every time.