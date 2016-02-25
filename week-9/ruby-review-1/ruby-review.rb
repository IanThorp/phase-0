# PezDispenser Class from User Stories

# I worked on this challenge [by myself ].
# I spent [2] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
=begin
Create method:
  input: flavor array
  steps: creates a new array
      new array has flavors in the array in order
  output: array with flavors
Count method:
  input: none
  steps: count each item in the array
  output: integer
Eat method:
  input: none
  steps: remove an item from the end of the array
  output: flavor that was removed(string)
Add method:
  input: new flavor
  steps: add the flavor to the end of the array that is pez object
  output: modified array
See method:
  input: none
  steps: print the array
  output: printed array


=end
# Initial Solution

class PezDispenser

  def initialize(flavor_array)
    @flavors = flavor_array
  end

  def pez_count
    @flavors.length
  end

  def get_pez
    @flavors.pop
  end

  def add_pez(flavor)
    @flavors.push(flavor)
  end

  def see_all_pez
    puts @flavors
  end
end



# Refactored Solution

# There seemed to be basically no refactoring needed. I only reversed the array for the see method so that it displayed a little more logically.

class PezDispenser

  def initialize(flavor_array)
    @flavors = flavor_array
  end

  def pez_count
    @flavors.length
  end

  def get_pez
    @flavors.pop
  end

  def add_pez(flavor)
    @flavors.push(flavor)
  end

  def see_all_pez
    puts @flavors.reverse
  end
end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
=begin

What concepts did you review in this challenge?

  I reviewed how to create a class and add methods to it.

What is still confusing to you about Ruby?

  Nothing that really relates to this challenge. I would like to learn how to deal with regular expressions though.

What are you going to study to get more prepared for Phase 1?

  I will study regular expressions and how those work.

=end