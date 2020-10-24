# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the
# 6th number appears amongst the first 5 numbers.

numbers = []
5.times do |iter|
  puts "Enter number #{iter + 1}"
  number = gets.chomp.to_i
  numbers << number
end
puts "Enter the last number"
last_number = gets.chomp.to_i

numbers.include?(last_number) ? puts("The number #{last_number} appears in #{numbers}".) :
                                puts("The number #{last_number} does not appear in #{numbers}.")
