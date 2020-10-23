require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

# What will each of the 4 puts statements print
# From the documentation:
  # new([year=-4712[,month=1[,mday=1[start=Date::ITALY]]]]) => date

# So the year defaults to -4712 if no argument is given, month defaults to 1 if no argument
# is given, and day defaults to 1 if no argument is given.

# So we have -4712-01-01
#            2016-01-01
#            2016-05-01
#            2016-05-13
puts Date.new(year = 2020, month = 10, mday = 22)