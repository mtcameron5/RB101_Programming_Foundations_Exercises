# Write a method that returns an Array that contains every other element of an Array
# that is passed in as an argument. The values in the returned list should be those
# values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def odd_index_values_from_array(array)
  odd_elements = []
  array.each_with_index do |element, idx|
    odd_elements << element if idx.even?
  end
  odd_elements
end

p odd_index_values_from_array([5, 7, 9, 11, 13])

p odd_index_values_from_array([2, 3, 4, 5, 6]) == [2, 4, 6]
p odd_index_values_from_array([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p odd_index_values_from_array(['abc', 'def']) == ['abc']
p odd_index_values_from_array([123]) == [123]
p odd_index_values_from_array([]) == []

# Try to solve the problem in two other ways

def odd_index_values_from_array(array)
  index = 0
  odd_elements = []
  while index < array.size
    odd_elements << array.fetch(index) if index.even?
    index += 1
  end
  odd_elements
end

p odd_index_values_from_array([2, 3, 4, 5, 6]) == [2, 4, 6]
p odd_index_values_from_array([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p odd_index_values_from_array(['abc', 'def']) == ['abc']
p odd_index_values_from_array([123]) == [123]
p odd_index_values_from_array([]) == []

def odd_index_values_from_array(array)
 p array.delete_if.with_index { |element, index| index.odd? }
end

odd_index_values_from_array([2, 3, 4, 5, 6]) == [2, 4, 6]