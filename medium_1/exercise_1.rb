# Write a method that rotates an array by moving
# the first element to the end of the array.
# The original array should not be modified.

# Do not use the method Array#rotate or
# Array#rotate! for your implementation.

def rotate_array(arr)
  arr_pos_one = arr[0]
  index = 0

  rotated_arr = arr.map do |element|
    if index == arr.length - 1
      arr_pos_one
    else
      index += 1
      arr[index]
    end
  end

  return rotated_arr
end

x = [5, 7, 9, 11]
y = rotate_array(x)

p x
p y

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

# Alternatively

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate_integers(int)
  rotate_string(int.to_s).to_i
end

p rotate_string('dig')
p rotate_integers(11053)