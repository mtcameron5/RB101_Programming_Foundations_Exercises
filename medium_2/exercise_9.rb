# Bubble Sort is one of the simplest sorting algorithms available. It isn't
# an efficient algorithm, but it's a great exercise for student developers.
# In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared. If the first
# of the two elements is greater than the second, then the two elements are
# swapped. This process is repeated until a complete pass is made without
# performing any swaps; at that point, the Array is completely sorted.

# Write a method that takes an Array as an argument, and sorts that Array using the
# bubble sort algorithm as just described. Note that your sort will be "in-place";
# that is, you will mutate the Array passed as an argument. You may assume that
# the Array contains at least 2 elements.

def bubble_sort!(array)

  loop do
    value_in_array_exchanged = false

    (0...(array.length - 1)).each do |index|
      if ((array[index] <=> array[index + 1]) == 1)
        # Can use Ruby idiom (array[index], array[index + 1] = array[index + 1], array[index]) instead of bottom 3 lines
        # holder = array[index]
        # array[index] = array[index + 1]
        # array[index + 1] = holder
        value_in_array_exchanged = true
      end
    end

    break if value_in_array_exchanged == false
  end

  return array
end

# arr = [5, 3]
# p bubble_sort!(arr)

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)