# Write a method that searches for all multiples of 3 or 5
# that lie between 1 and some other number, and then
# computes the sum of those multiples. For instance,
# if the supplied number is 20, the result should be
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in
# is an integer greater than 1.

def sum_of_multiples_of_3_and_5(num)
  arr = []
  1.upto(num) do |number|
    arr.push(number) if number % 3 == 0 || number % 5 == 0
  end
  arr.reduce(:+)
end

p sum_of_multiples_of_3_and_5(3) == 3
p sum_of_multiples_of_3_and_5(5) == 8
p sum_of_multiples_of_3_and_5(10) == 33
p sum_of_multiples_of_3_and_5(1000) == 234168