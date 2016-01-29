# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [] hours on this challenge.

# 0. Pseudocode


# Input:number of sides
# Output:random number or number of sides
# Steps:
#   Create Die class with one argument in (number of sides)
#   Check if argument is less than 1
  # if it is, raise an error
#   Create a sides method to check number of sides
#   Create a roll method to "roll" the dice randomly


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides.is_a? Integer
      raise ArgumentError.new("Argument must be an Integer.")
    end
    unless sides >= 1
      raise ArgumentError.new("Argument must be greater than or equal to 1.")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("Argument greater than or equal to 1.")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# 4. Reflection

What is an ArgumentError and why would you use one?

  An argument error is used when an incorrect argument is input. You would use one when the argument will not work with your class, and a different argument needs to be input by the user.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

  I created my own roll and sides method for the Die class. I also used the rand method. These were all fairly simple. The only challenges I had was not correctly creating the instance variable of @sides.

What is a Ruby class?

  A ruby class is basically the blueprint for creating objects. The class of an object will tell it what methods or behaviors may be applied to it and what those methods and behaviors will do.

Why would you use a Ruby class?

  It is great for creating new objects with built in methods. This way, you don't not have to reinput these methods or behaviors everytime you want a new object that will respond to them.

What is the difference between a local variable and an instance variable?

  A local variable has a scope of only its current context. For example, a local variable must be defined in the method it is used in, or at a higher level than the method in the code. An instance variable applies to a specific instance of an object.

Where can an instance variable be used?

  An instance variable is usually set within a class, and is used for that current instance of an object that is created. If one object has a different instance variable value, it does not affect other objects of the same class.