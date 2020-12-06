def multiply_all_pairs(arr_one, arr_two)
  arr_one_index = 0
  arr_two_index = 0
  new_arr = []
  loop do
    new_arr << arr_one[arr_one_index] * arr_two[arr_two_index]
    arr_two_index += 1
    if arr_two_index == arr_two.size
      arr_one_index += 1
      arr_two_index = 0
    end
    break if new_arr.size == arr_one.size * arr_two.size
  end
  new_arr.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs(arr_one, arr_two)
  products = []
  arr_one.each do |arr_one_element|
    arr_two.each do |arr_two_element|
      products << arr_one_element * arr_two_element
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Alternatively

def multiply_all_pairs(arr_one, arr_two)
  arr_one.product(arr_two).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]