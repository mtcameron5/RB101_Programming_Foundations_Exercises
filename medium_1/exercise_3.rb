# If you take a number like 735291, and rotate it to the left,
# you get 352917. If you now keep the first digit fixed in place,
# and rotate the remaining digits, you get 329175. Keep the first
# 2 digits fixed in place and rotate again to 321759. Keep the
# first 3 digits fixed in place and rotate again to get 321597.
# Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called
# the maximum rotation of the original number.

def rotate_rightmost_digits(number, position)
  return number if position == 1
  number_string = number.to_s
  new_position = number_string.length - position

  number_to_rotate = number_string.slice!(new_position)
  return (number_string + number_to_rotate).to_i
end

def max_rotation(number)
  number_string = number.to_s
  position = number_string.length
  number_of_iterations = number_string.length

  number_of_iterations.times do
    number = rotate_rightmost_digits(number, position)
    position -= 1
  end

  return number
end

# Alternatively

def max_rotation(number)
  number_digits = number.to_s.length
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  return number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(735291)
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

