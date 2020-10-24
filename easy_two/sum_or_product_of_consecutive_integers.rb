# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

def sum_to_num(int)
  sum = 0
  loop do
    sum += int
    break if int == 1
    int -= 1
  end
  sum
end

def sum_to_prod(int)
  sum = 1
  loop do
    sum *= int
    break if int == 1
    int -= 1
  end
  sum
end

puts ("Enter an integer greater than 0.")
num = gets.chomp.to_i

def get_sum_or_prod
  loop do
    puts "Determine the sum or product of all numbers between 1 and the entered integer"
    sum_or_product = gets.chomp.downcase
    if sum_or_product == "sum" || sum_or_product == "product"
      return sum_or_product
    else
      puts "Enter 'sum' or 'product'"
    end
  end
end

sum_or_prod = get_sum_or_prod
# if sum_or_prod == "sum"
#   puts sum_to_num(num)
# elsif sum_or_prod == "product"
#   puts sum_to_prod(num)
# end

# The more idiomatic or rubyish way of computing sum or product

def compute_sum(number)
  1.upto(number).reduce(:+)
end

def compute_product(number)
  1.upto(number).reduce(:*)
end

if sum_or_prod == "sum"
  puts compute_sum(num)
elsif sum_or_prod == "product"
  puts compute_product(num)
end


