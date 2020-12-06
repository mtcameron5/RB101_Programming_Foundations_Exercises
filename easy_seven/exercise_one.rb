def interleave(arr_one, arr_two)
  index_for_arr_one = 0
  index_for_arr_two = 0
  new_arr = []
  loop do
    new_arr << arr_one[index_for_arr_one]
    new_arr << arr_two[index_for_arr_two]
    index_for_arr_one += 1
    index_for_arr_two += 1
    break if arr_one.size == index_for_arr_one || arr_two.size == index_for_arr_two
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Alternatively

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']