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