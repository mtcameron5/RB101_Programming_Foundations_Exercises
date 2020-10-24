# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those
# two numbers: addition, subtraction, product, quotient, remainder,
# and power. Do not worry about validating the input.

puts "Enter a positive integer"
int_one = gets.chomp.to_i

puts "Enter another positive integer"
int_two = gets.chomp.to_i

sum = int_one + int_two
puts "==> #{int_one} + #{int_two} = #{sum}"

difference = int_one - int_two
puts "==> #{int_one} - #{int_two} = #{difference}"

product = int_one * int_two
puts "==> #{int_one} * #{int_two} = #{product}"

quotient = int_one / int_two
puts "==> #{int_one} / #{int_two} = #{quotient}"

remainder = int_one % int_two
puts "==> #{int_one} % #{int_two} = #{remainder}"

power = int_one**int_two
puts "==> #{int_one} ** #{int_two} = #{power}"
