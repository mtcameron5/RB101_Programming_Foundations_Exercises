def find_fibonacci_index_by_length(number_of_digits)
  latest_number = 1
  next_number = 1
  index_position = 2
  loop do
    index_position += 1
    latest_number, next_number = latest_number + next_number, latest_number
    break if latest_number.to_s.size == number_of_digits
  end
  index_position
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847