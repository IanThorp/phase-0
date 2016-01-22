# Try it!
1. What does puts do?
  "puts" technically return a value of nil, but will print to the output onto the console and a new line. This is important with lots of code in Ruby since you often expect to return something.

2. What is an integer? What is a float?
  An integer is basically a whole number with no decimal points. A float is a number with decimal points. Float is short for floating point number.

3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  When using integer division, you will only ever get an output of integers. When using float division, you will always get an output of a float number. So if you were buying Magic The Gathering Cards and $3 a pack and you had $10, how many could you buy?  3.33 would not make very much sense, so we need to use integer division to git 10/3 = 3.s

# Hours in a year

```ruby
puts 1 * 365 * 24
8760
=> nil
```

# Minutes in a decade

```ruby
puts 10 * 365 * 24 * 60
5256000
=> nil
```

# Reflection

1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  The format for mathmatics in Ruby is "object operator object". below are I  have listed the operator for each function.
  *Addition - "+"  This can be used on integers, floats, or strings to add the together.
  *Subtraction - "-"  can be used on integers or floats.
  *Multiplication - "*" can be used on integer or floats, and sometimes strings.  For strings, it must be "string * number".
  division - "/" can be used on floats and integers.

2. What is the difference between integers and floats?
  An integer has no decimal points and float will have some decimal points.

3. What is the difference between integer and float division?
  In integer division, only integers are returned, in float division, only floats are returned.

4. What are strings? Why and when would you use them?
  Strings are groups of letters.  You would use them to create values for anything that is not a number or boolean. They can be put into code as such.

  my_string = "Howdy Partner"

5. What are local variables? Why and when would you use them?
  local variables are variables that are declared in the same line of code that is beign u

6. How was this challenge? Did you get a good review of some of the basics?
  It was nice to have a quick review. Lots of stuff that I have gone through before, but nice to check it out again.

  # Links

  4.2.1 Defining Variables :https://github.com/IanThorp/phase-0/blob/master/week-4/defining-variables.rb

  4.2.2 Simple Strings : https://github.com/IanThorp/phase-0/blob/master/week-4/simple_string.rb

  4.2.3 Local Variables and Basic Arithmatic: https://github.com/IanThorp/phase-0/blob/master/week-4/basic_math.rb