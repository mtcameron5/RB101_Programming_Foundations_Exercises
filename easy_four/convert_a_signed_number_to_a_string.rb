# In the previous exercise, you developed a method that converts
# non-negative numbers to strings. In this exercise, you're going
# to extend that method by adding the ability to represent
# negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.
require 'pry'

DIGITS = { 0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9" }

def signed_integer_to_string(number)
  new_number = number.abs
  result = ''
  loop do
    new_number, remainder = new_number.divmod(10)
    # binding.pry
    result.prepend(DIGITS[remainder])
    break if new_number == 0
  end
  if number > 0
    result.prepend("+")
  elsif number < 0
    result.prepend("-")
  end
  p result
  result
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    binding.pry
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(-123) == '-123'