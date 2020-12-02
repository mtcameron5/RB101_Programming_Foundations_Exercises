# In the previous exercise, you wrote a method to
# transpose a 3 x 3 matrix as represented by a ruby Array of Arrays.

# Matrix transposes aren't limited to 3 x 3 matrices,
# or even square matrices. Any matrix can be transposed by
# simply switching columns with rows.

# Modify your transpose method from the previous
# exercise so it works with any matrix with at least 1 row and 1 column.

require 'pry'

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]


def transpose(matrix)
  number_of_inner_arrays = matrix[0].size
  transposed_matrix = Array.new(number_of_inner_arrays) { [] }

  matrix.each_with_index do |sub_arr, sub_arr_index|
    sub_arr.each_with_index do |element, element_index|
      transposed_matrix[element_index][sub_arr_index] = element
    end
  end
  return transposed_matrix
end

new_matrix = transpose(matrix)


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

# Alternatively

def transpose(matrix)
  size_of_inner_array = matrix[0].size - 1
  size_of_outer_array = matrix.size - 1
  result = []
  (0..size_of_inner_array).each do |column_index|
    new_row = (0..size_of_outer_array).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]