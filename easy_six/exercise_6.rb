def merge(arr_one, arr_two)
  merged_arr = []
  arr_one.each { |element| merged_arr << element }
  arr_two.each { |element| merged_arr << element unless merged_arr.include?(element) }
  merged_arr
end

p merge([1, 3, 5], [3, 6, 9])