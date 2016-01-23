# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  array = [a, b, c]
  array.sort!
  if (a == 0 || b == 0 || c == 0)
    return false
  elsif array[0] + array[1] - array[2] <= 0
    return false
  end
  p (((array[0] * array[0]) + (array[1] * array[1])) == (array[2] * array[2])) || ((a == b) && (b == c)) || ((a == b) || (a == c) || (b == c))
end
