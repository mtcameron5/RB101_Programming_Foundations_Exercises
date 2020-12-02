# Write a method that returns the number of Friday the 13ths
# in the year given by an argument. You may assume that the
# year is greater than 1752 (when the United Kingdom adopted
# the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.
require 'date'

def friday_13th(year)
  number_of_friday_13ths = 0

  (1..12).each do |month|
    day_of_week = Date.new(year, month, 13).wday
    number_of_friday_13ths += 1 if day_of_week == 5
  end
  return number_of_friday_13ths
end

p friday_13th(2015)
p friday_13th(1986)
p friday_13th(2019)