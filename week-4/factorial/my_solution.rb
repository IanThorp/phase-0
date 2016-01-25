# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if number >= 0
    i = 1
    until number == 0
      i *= number
      number -= 1
    end
  else
    puts "Please enter positive integer."
  end
  return i
end