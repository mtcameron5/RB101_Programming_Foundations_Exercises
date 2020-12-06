require 'pry'

def halvsies(arr)
  new_arr = [[], []]
  index = 0
  0.upto((arr.size / 2.0).ceil - 1) do 
    new_arr[0] << arr[index]
    index += 1
  end
  0.upto(arr.size / 2 - 1) do 
    new_arr[1] << arr[index]
    index += 1
  end
  new_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

def halvsies(arr)
  new_arr = [[], []]
  arr.each.with_index(1) do |element, index|
    index <= (arr.size / 2.0).ceil ? new_arr[0] << element : new_arr[1] << element
  end
  new_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# Alternatively

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]