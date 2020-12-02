# A featured number (something unique to this exercise) is
# an odd number that is a multiple of 7, and whose digits
# occur exactly once each. So, for example, 49 is a featured
# number, but 98 is not (it is not odd), 97 is not
# (it is not a multiple of 7), and 133 is not
# (the digit 3 appears twice).

# Write a method that takes a single integer as an argument,
# and returns the next featured number that is greater than
# the argument. Issue an error message if there is no
# next featured number.

def get_next_featured_number(number)
  loop do
    return number if number % 7 == 0 && number.to_s.chars.map { |num| number.to_s.count(num) }.all?(1) && number.odd?

    number += 1
    break if number >= 9_876_543_210
  end

  return 'There is no possible number that fulfills those requirements.'
end

# p get_next_featured_number(12) == 21
# p get_next_featured_number(20) == 21
# p get_next_featured_number(21) == 35
# p get_next_featured_number(997) == 1029
# p get_next_featured_number(1029) == 1043
# p get_next_featured_number(999_999) == 1_023_547
p get_next_featured_number(999_999_987) == 1_023_456_987

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

p featured(999_999_987) == 1_023_456_987