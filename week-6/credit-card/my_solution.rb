# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit integer
# Output: boolean
# Steps:
# Check IF integer input is 16 digits
# SPLIT integer into 16 index array
# COLLECT destructive each array index
#   double every even index and zero index
# SPLIT into array again
# sum all digits
# IF sum is multiple of 10
#   RETURN true
# ELSE
#   RETURN false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(credit_number)
    unless credit_number.to_s.length == 16
      raise ArgumentError.new("Get a real credit card!")
    end
  @credit_number = credit_number
  end

  def check_card
   @credit_array = @credit_number.to_s.split("")

  @credit_array.each_with_index do |v, i|
    if i.even? || i == 0
    @credit_array[i] = v.to_i * 2
    end
  end


  @credit_array = @credit_array.to_s.split("")
  @sum = 0
  @credit_array.each do |i|
    @sum += i.to_i
  end


  if @sum % 10 == 0
    return true
  else
    return false
  end
end
end

# Refactored Solution

class CreditCard
  def initialize(credit_number)
    unless credit_number.to_s.length == 16
      raise ArgumentError.new("Get a real credit card!")
    end
  @credit_number = credit_number
  end

  def check_card
   @credit_array = @credit_number.to_s.split("")

    @credit_array.each_with_index do |v, i|
      if i.even? || i == 0
      @credit_array[i] = v.to_i * 2
      end
    end

    @credit_array.to_s.split("").inject(0) {|sum, x| @sum = sum + x.to_i}

    if  @sum % 10 == 0; return true
    else ;return false end
  end
end

# Tried two different refactors. This is the second.

class CreditCard
  def initialize(credit_number)
    unless credit_number.to_s.length == 16
      raise ArgumentError.new("Get a real credit card!")
    end
  @credit_number = credit_number
  end

  def check_card
    number = @credit_number.to_s.split('')
    number.collect! do |i|
      i.to_i
    end
    double(number).reduce(:+) % 10 == 0 ? true : false
  end

  def double(array)
    for i in (0..14).step(2)
      array[i] *= 2
      if array[i] > 9
        array[i] = (array[i] % 10) + 1
      end
    end
    return array
  end

end
# Reflection

# What was the most difficult part of this challenge for you and your pair?

#   Getting the initial solution was quite tough. Some of the math that seemed like it would work, in face did not. Ended up having incorrect math, but we went back and checked what was returned every step of the way. I also did the calculations by hand to see where we went wrong. It took a while, but it eventually worked out perfectly.

# What new methods did you find to help you when you refactored?

#   We couldn't decide on which technique was better, so we have two refactored methods. The inject and reduce method were definitely the main ones. The step method also helped out a bit.

# What concepts or learnings were you able to solidify in this challenge?

#   I was able to solidify error finding mainly. Going through each step of your code, although tedious, is a very important thing to do. It helped so much.