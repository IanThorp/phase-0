# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => the error occurs in errors.rb
# 2. What is the line number where the error occurs?
# => line 170 is where it occurs
# 3. What is the type of error message?
# => It is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => It mentions there is an unexpected end of input, it is expecting an end
# 5. Where is the error in the code?
# => The interpreter places the error at the end of line 170, after everything else. This is a little misleading.
# 6. Why did the interpreter give you this error?
# => There must be an end statement to close off the while statement. The code should be like this
# def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
#end

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => It occurs on line 40.
# 2. What is the type of error message?
# => Undefined local variable or method.
# 3. What additional information does the interpreter provide about this type of error?
# => The undefined variable or method in question is 'south_park'
# 4. Where is the error in the code?
# => It is not directly pointed out, but seems to be all of line 40
# 5. Why did the interpreter give you this error?
# => In ruby, one must assign something to a new local variable, other wise it will not work properly.  Some kind of value must be assigned, like this.
# south_park = "good"

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => It occurs on line 56
# 2. What is the type of error message?
# => It is an undefined method error
# 3. What additional information does the interpreter provide about this type of error?
# => It is refering to 'cartman()'
# 4. Where is the error in the code?
# => It is located on line 56, the entire line it seems.
# 5. Why did the interpreter give you this error?
# => The method cartman() that is being referred to was never defined to start. The easiest way to fix it would be to define it and end it as below.
# def cartman()
# end

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
#
#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => It occurs on line 73.
# 2. What is the type of error message?
# => It contains the wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => It also mentions this error is associated with line 77 as well. There is 1 argument where there should be 0.
# 4. Where is the error in the code?
# => It could be one of two places. The terminal mentions line 77, but we could also change line 73. Granted, the easiest and what makes sense is to change line 77.
# 5. Why did the interpreter give you this error?
# => The original method asks for 0 arguments, but when the method is called, one argument was given. Removing the argument from line 77 is the way to go. It should be written as below.
#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
#
#cartmans_phrase

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end
#
#cartman_says

# 1. What is the line number where the error occurs?
# => It is on line 97.
# 2. What is the type of error message?
# => Wrong number of arguments message.
# 3. What additional information does the interpreter provide about this type of error?
# => There are 0 arguments where there should be 1, and it is associated with line 101
# 4. Where is the error in the code?
# => It lables it as technically line 101, although line 97 could also be modified to make it pass.
# 5. Why did the interpreter give you this error?
# => The method 'cartman_says' was defined with one argument, but no arguments were given when it was called. This can be remedied by giving it an argument on line 101.

#def cartman_says(offensive_message)
#  puts offensive_message
#end
#
#cartman_says("Respect my authoritah!")

# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end
#
#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => The error is on line 122.
# 2. What is the type of error message?
# => It is the wrong number of arguments.
# 3. What additional information does the interpreter provide about this type of error?
# => There is 1 argument where there should be 2, and it is associated with line 126.
# 4. Where is the error in the code?
# => The terminal says line 126.
# 5. Why did the interpreter give you this error?
# The method 'cartmans_lie' was defined with 2 arguments on line 122, but only one argument is given on line 126. Fixed below
#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end
#
#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kenny')

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => line 146
# 2. What is the type of error message?
# =>String can't be coerced in fixnum(TypeError)
# 3. What additional information does the interpreter provide about this type of error?
# =>Does not give much more info.
# 4. Where is the error in the code?
# => The location is just relisted as line 146.
# 5. Why did the interpreter give you this error?
# In Ruby, you can not multiply a number by a string, but you can do the opposite. See below
#"Respect my authoritay!" * 5

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => line 162
# 2. What is the type of error message?
# => divided by zero
# 3. What additional information does the interpreter provide about this type of error?
# =>Not much more info.
# 4. Where is the error in the code?
# => It mentions it is form line 162 again, but that is it.
# 5. Why did the interpreter give you this error?
# => The code is asking the computer to defy a basic math principle of dividing anything by zero. Simply switching the numbers will solve it. solution is below.
#amount_of_kfc_left = 0/20

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 179
# 2. What is the type of error message?
# => can not load such file
# 3. What additional information does the interpreter provide about this type of error?
# => It points to what file it is trying to load.
# 4. Where is the error in the code?
# => Nothing is stated, but it is obviously in the fact that a file is missing
# 5. Why did the interpreter give you this error?
# => There is no file to link to for the file. The solution is of course to add this file in or link to a different already existing file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# 1. Which error was the most difficult to read?
  # The require_relative error was most difficult mainly because it is a command I had never used before.
# 2.  How did you figure out what the issue with the error was?
  # It showed a file path to a name, so it was more of a guess with trial and error. A little googling helped in teh long run too.
# 3. Were you able to determine why each error message happened based on the code?
  # For all but the last, I probably could have figured out what was wrong without the error message. The last one is the only one I really needed the message to figure out. It really helps with things I am unfamiliar with.
# 4. When you enounter errors in your future code, what process will you follow to help you debug?
  # I will run it through the terminal, figure out the type and location of the error, than read the actual code. If that does not work, google and experimenting is my friend.