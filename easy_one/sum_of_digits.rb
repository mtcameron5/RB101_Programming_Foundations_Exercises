# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(num)
  sum = num.to_s.split('').map { |num| num.to_i }.sum
end
# Alternatively (syntactical sugar for map and reduce)

def sum(num)
  num.to_s.split('').map(&:to_i).reduce(:+)
end

puts sum(496)
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45