require 'pry'

def reverse!(arr)
  reverse_index = -1
  index = 0
  (arr.size / 2).times do
    arr[index], arr[reverse_index] = arr[reverse_index], arr[index]
    index += 1
    reverse_index -= 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
