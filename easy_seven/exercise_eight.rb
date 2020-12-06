def multiply_list(arr_one, arr_two)
  index = 0
  arr = []
  loop do
    arr << arr_one[index] * arr_two[index]
    index += 1
    break if index == arr_one.size
  end
  arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Alternatively

def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |element, index|
    products << element * list_2[index]
  end
  products
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

