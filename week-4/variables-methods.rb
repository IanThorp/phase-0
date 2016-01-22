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

