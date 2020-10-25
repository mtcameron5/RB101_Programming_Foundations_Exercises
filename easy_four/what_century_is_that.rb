# Write a method that takes a year as input and returns
# the century. The return value should be a string that
# begins with the century number, and ends with st, nd,
# rd, or th as appropriate for that number.

# New centuries begin in years that end with 01.
# So, the years 1901-2000 comprise the 20th century.

# Get the century that the year is
# Get the suffix based on that number

require 'pry'


def century(year)
  century_num = year / 100 + 1
  century_num -= 1 if year % 100 == 0
  p century_num.to_s + get_suffix(century_num.to_s)
end

def get_suffix(year)
  last_two_digits = (year[-2].to_s + year[-1].to_s).to_i
  return 'th' if last_two_digits == 11 || last_two_digits == 12 || last_two_digits == 13
  last_digit = year[-1].to_s

  suffix = case last_digit
  when "1" then 'st'
  when "2" then 'nd'
  when "3" then 'rd'
  else 'th'
  end
  suffix
end

# p century(2000)
# p century(1995)
# p century(1)
# p century(105)
# p century(200)

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'