# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  array_2.each do |items|
    array_1.push(items)
  end
  return array_1
end