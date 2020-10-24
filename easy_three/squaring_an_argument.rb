# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square
# is the result of multiplying a number by itself).

require 'pry'

def multiply(num_one, num_two)
  num_one * num_two
end

def square(n)
  multiply(n, n)
end

# Further exploration: to the power of N method while still using the multiply method
def power_of_n(n)
  new_num = n
  (n - 1).times do
    new_num = multiply(new_num, n)
  end
  new_num
end


# puts square(3)
puts power_of_n(5)