# Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.


require 'pry'

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_arr = [[5, 3],
           [1, 7],
           [0, 4],
           [8, 2]]
def rotate90(matrix)
  size_of_inner_array = matrix[0].size
  size_of_outer_array = matrix.size

  rotated_array = Array.new(size_of_inner_array) { [] }
  inner_array_index = size_of_outer_array - 1
  outer_array_index = 0
  new_index = 0
  another_new_index = 0
  matrix.each do |sub_arr|

    sub_arr.each do |element|
      rotated_array[new_index][outer_array_index] = matrix[inner_array_index][another_new_index]
      p rotated_array
      if outer_array_index == size_of_outer_array - 1
        # binding.pry
        another_new_index += 1
        new_index += 1
        inner_array_index = size_of_outer_array - 1
        outer_array_index = 0
      else
        outer_array_index += 1
        inner_array_index -= 1
      end
    end
  end
  return rotated_array
end




new_matrix1 = rotate90(matrix1)
p new_matrix1
p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]

new_matrix2 = rotate90(matrix2)
p new_matrix2
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]


new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
p new_matrix3 == matrix2
# p new_matrix3
