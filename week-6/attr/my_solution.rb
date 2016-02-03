#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input: name (string)
# Output: prints greeting (string)
# Steps:
# create CLASS for NameData
  # create attribute reader for instance variable name
  # DEFINE initialize for NameData with no argument
    # set instance variable name equal my name
# create CLASS for Greetings
  # DEFINE initialize for Greetings
    #Call new instance of NameData
  #DEFINE hello method for Greetings
    # PUTS Greeting string with using name reader function from NameData


class NameData
  attr_reader :name
  def initialize
    @name = "Ian"
  end
end


class Greetings
  def initialize
      @name = NameData.new
    end
  def hello
    puts "Hello #{@name.name}! How wonderful to see you today!"
  end
end

greet = Greetings.new
greet.hello


# Reflection

# ---RELEASE 1---

# What are these methods doing?

#   Each of the "what_is" methods will return one of the values of the profile class it is called on. These are reader methods. Each of the "change_my" methods will change one of the values of the profile class it is called on. These are writer methods. The "print_info" method is not another reader method because it prints out all of the values, but does not return them.

# How are they modifying or returning the value of instance variables?

#   The "what_is" methods simply return the instance variable, nothing to fancy. The "change_my" methods simply replace the instance variable with something else. Nothing too fancy again.

# ---RELEASE 2---

# What changed between the last release and this release?

#   The "what_is_age" method has been commented out, and replace with attr_reader :age.  That is actually pretty cool.

# What was replaced?
#   The "what_is_age" method.


# Is this code simpler than the last?

#   Yes, much simpler, and with a little backround knowledge, much easier to understand.

# --RELEASE 3---

# What changed between the last release and this release?

#   An attr_writer method was added for :age.

# What was replaced?

# The "change_my_age" method was replaced.

# Is this code simpler than the last?

# This code is much much simpler. Awesome!

# ---RELEASE 6---

# What is a reader method?

#   A reader method is one that is called to read an instance variable from outside of that instance

# What is a writer method?

#   A writer method is used to change an instance variable inside of a class instance from the outside.

# What do the attr methods do for you?

#   They allow me to access or change data that is inside an instance of a class from the outside.

# Should you always use an accessor to cover your bases? Why or why not?

#   No, changing data inside of a class instance can have a very negative effect on the instance. To avoid this, and memory waste, only use what is necessary.

# What is confusing to you about these methods?

#   Nothing is really confusing so far.