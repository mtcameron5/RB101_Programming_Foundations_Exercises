# transpose_3x3_matrix.rb

# Write a method that takes a 3 x 3 matrix in Array of Arrays
# format and returns the transpose of the original matrix.
# Note that there is a Array#transpose method that does this --
# you may not use it for this exercise. You also are not
# allowed to use the Matrix class from the standard library.
# Your task is to do this yourself.

require 'pry'
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# PSEUDO-CODE
# grab each inner array, store it in a variable
#
def transpose(matrix)
  new_matrix = Array.new(3) { Array.new }
  matrix.each_with_index do |row, row_index|
    row.each_with_index do |element, element_index|
      # binding.pry
      new_matrix[element_index][row_index] = element
    end
  end
  new_matrix
end

new_matrix = transpose(matrix)
p new_matrix
p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]