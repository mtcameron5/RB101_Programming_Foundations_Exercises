# Rewrite your recursive fibonacci method so that it computes its results without recursion.

def fibonacci(n)
  return 1 if n <= 2

  first_position = 1
  second_position = 1
  newest_position = nil
  (n - 2).times do
    newest_position = first_position + second_position
    first_position = second_position
    second_position = newest_position
  end

  return newest_position
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501