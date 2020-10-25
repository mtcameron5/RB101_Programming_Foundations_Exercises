# Write a method that takes a String of digits, and returns
# the appropriate number as an integer. The String may have
# a leading + or - sign; if the first character is a +, your
# method should return a positive number; if it is a -, your
# method should return a negative number. If no sign is given,
# you should return a positive number.

require 'pry'

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_signed_integer(number_string)
  if number_string[0] == "-"
    is_negative = true
    number_string.gsub!('-', '')
  elsif number_string[0] == "+"
    number_string.gsub!('+', '')
  end

  digits = number_string.chars.map { |char| DIGITS[char] }
  length = digits.length
  new_num = 0
  digits.each.with_index do |digit, index|
    place_holder = length - index - 1
    new_num += digit * (10 ** place_holder)
  end
  is_negative ? -1 * new_num : new_num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100