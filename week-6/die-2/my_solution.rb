# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [] hours on this challenge.

# Pseudocode

# Input: labels(array)
# Output: random string
# Steps:
  # Define class name
    # make initialize method, takes array argument
      # IF argument is empty, return error
      # ELSE, set instance variable sides
    # DEFINE sides method
      # RETURN instance variable of sides
    # DEFINE roll method
# POP array shuffled


# Initial Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Must have at least one string in the array.")
    end
    @labels = labels
    @sides = @labels.length
  end

  def sides
    @sides
  end

  def roll
    roll = @labels.shuffle
    roll[0]
  end
end


# Refactored Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Must have at least one string in the array.")
    end
    @labels = labels
    @sides = @labels.length
  end

  def sides
    @sides
  end

  def roll
    @labels.shuffle.pop
  end
end






# Reflection

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  The logic was mostly the same. I did need to do a little more work by making the instance variable for labels. The error was checking for something different, but largely the same process. Also, I did need to do a little more work on roll, but it was relatively easy.

What does this exercise teach you about making code that is easily changeable or modifiable?

  Having a good skeleton to a program is the most important part. Once you have the framework, it is relatively easy to go back and change individual parts. So framework is most important, and probably should be done first.

What new methods did you learn when working on this challenge, if any?

  I learned how the use the empty? method to check if an array is empty. Very helpful.

What concepts about classes were you able to solidify in this challenge?

  I was able to solidify how to use instance variables. Also in my research, I learned a bit about class variables. It is now easier to seperate those two types.
