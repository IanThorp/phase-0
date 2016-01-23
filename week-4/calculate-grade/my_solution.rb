# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def get_grade(grade)
  if grade <= 59
    p "F"
  elsif grade <= 69
    p "D"
  elsif grade <= 79
    p "C"
  elsif grade <= 89
    p "B"
  else
    p "A"
  end
end

get_grade(89)