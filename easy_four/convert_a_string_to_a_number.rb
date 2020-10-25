require 'pry'

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(number_string)

  digits = number_string.chars.map { |char| DIGITS[char] }
  length = digits.length
  new_num = 0
  digits.each.with_index do |digit, index|
    place_holder = length - index - 1
    new_num += digit * (10 ** place_holder)
  end
  new_num
end

p string_to_integer("495")

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570