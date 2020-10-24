# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.
(1..99).each do |num|
  puts num if num % 2 == 1
end

puts (1..99).select { |num| num % 2 == 1 }