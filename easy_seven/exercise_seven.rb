def show_multiplicative_average(array_of_integers)
  answer = 1.0
  array_of_integers.each { |integer| answer *= integer }
  answer /= array_of_integers.size
  format("%.3f", answer.round(3))
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667