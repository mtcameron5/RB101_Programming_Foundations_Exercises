# Write a method that computes the difference
# between the square of the sum of the first n
# positive integers and the sum of the squares
# of the first n positive integers.

def sum_square_difference(num)
  arr = (1..num).to_a
  square_of_arr_summed = (arr.sum) ** 2
  square_of_each_num = arr.reduce(0) { |sum, n| sum + n**2 }

  # Alternatively
  # square_of_each_num = 0
  # arr.each { |element| square_of_each_num += element **2 }

  return square_of_arr_summed - square_of_each_num
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150