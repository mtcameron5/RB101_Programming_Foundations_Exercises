# Write a method that takes an Array of numbers,
# and returns an Array with the same number of
# elements, and each element has the running total
# from the original Array.

def running_total(arr)
  new_arr = []
  running_total = arr[0]
  arr.each_with_index do |element, index|
    new_arr.push(running_total)
    running_total = running_total + arr[index + 1].to_s.to_i
  end
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Alternatively

def running_total(array)
  sum = 0
  p array.map { |value| sum += value }
end

running_total([14, 11, 7, 15, 20])