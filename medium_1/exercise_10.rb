# In the previous exercise, we developed a procedural
# method for computing the value of the nth Fibonacci
# numbers. This method was really fast, computing the
# 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that
# returns the last digit of the nth Fibonacci number.

def fibonacci_last(n)
  return 1 if n <= 2

  first_position = 1
  second_position = 1
  newest_position = nil
  (n - 2).times do
    newest_position = first_position + second_position
    first_position = second_position
    second_position = newest_position
  end

  return newest_position.to_s[-1].to_i
end


def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last.to_s[-1].to_i
end

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
