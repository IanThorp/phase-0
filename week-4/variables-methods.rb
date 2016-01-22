# Try it out

  ## Greeting

    puts "Howdy, what is your first name?"
    first_name = gets.capitalize.chomp
    puts "And what would be your middle name?"
    middle_name = gets.capitalize.chomp
    puts "How about your last name?"
    last_name = gets.capitalize.chomp

    puts "It is very nice to meet you " + first_name + " " + middle_name + " " + last_name + "!"

  ## Better Number

    puts "What is your favorite number?"
    number = gets.chomp.to_i
    big_number = number + 1

    puts "Your favorite should be " + big_number.to_s + ".  It is bigger and better!"

=begin
1. How do you define a local variable?
    local_variable = value

2. How do you define a method?
    def method_name(argument_1, argument_2)
        method
    end

3. What is the difference between a local variable and a method?
    A local variable will simply store the information or value. A method will perform an action, often times using variables within it.

4. How do you run a ruby program from the command line?
    Simply type "ruby ruby_program.rb" to run a file that is already ready to go, or "irb" to write ruby code directly into the command line.

5. How do you run an RSpec file from the command line?
    You will type "rspec rspec_file.rb" into the commandline.

6. What was confusing about this material? What made sense?
    Making methods for the first time was a little confusing, but not too difficult. Running the rspec was also confusing at first. The easiest to understand seem to be actually writing the code once I read through the materials.

  4.3.1 Address - https://github.com/IanThorp/phase-0/blob/master/week-4/address/my_solution.rb

  4.3.2 Math - https://github.com/IanThorp/phase-0/blob/master/week-4/math/my_solution.rb
=end