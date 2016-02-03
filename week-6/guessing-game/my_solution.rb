# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: answer (integer)
# Output: boolean or symbol
# Steps:
  # DEFINE class guessing game
    # DEFINE initialize method with answer argument
      # set instance answer equal to input answer
    # DEFINE guess method with guess integer argument
      # check IF guess is higher, lower, or equal to answer
    # DEFINE solved method
      # solved method takes no argument
      # check IF guess is correct,
      # return true or false



# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @final = false
  end

  def guess(guess)
    @guess = guess
    if @guess == @answer
      @final = true
      :correct
    elsif @guess > @answer
      @final = false
      :high
    else
      @final = false
      :low
    end
  end
  def solved?
    return @final
  end
  # Make sure you define the other required methods, too
end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @final = false
  end

  def guess(guess)
    @guess = guess
    case
    when @guess == @answer
      @final = true
      :correct
    when @guess > @answer
      @final = false
      :high
    when @guess < @answer
      @final = false
      :low
    end
  end

  def solved?; @final end
end




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

#   Instance variables only affect whatever specific instance of a class they are in. I guess they easies way for me to describe it would be a car. Think of car as a class. If I install a new engine (method) into my car, it will change how my specific car accelerates. It will not affect any of the other cars on the road. The other cars are different instances of the same class.

# When should you use instance variables? What do they do for you?

#   Instance variables should be used for most of your variables in a class. They are nice since they do not affect other instances. So if any calculations depend on your specific class, they will not mess with any other instances.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

#   If, elsif, and else statements will be evaluated in the order that they are input it. Once one passes, the rest are skipped. So it makes sense to put your most common occurence, if there is one, first. Case is also a handy one to use. Using case, you can have as many when statements as you would like. These also get evalutated in order, and skip any leftover statements after the first succeeds. I used case in my code because I felt it was more clear what exactly the code was doing.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

#   symbols will take up less memory. A symbol is immutable, so it holds a place and does not creat a new one every time. These strings that are passed will need to create a new string, then wipe the old string every time it is used. Simply a waste.