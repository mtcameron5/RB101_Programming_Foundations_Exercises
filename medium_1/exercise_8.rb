# 1 1 2 3 5 8 13 21 34 55
def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n - 2) + fibonacci(n - 1)
  end
end

p fibonacci(12)

def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end

p sum(10)

p sum(5)