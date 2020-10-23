# Write a method that displays an 8-pointed star in an nxn grid, 
# where n is an odd integer that is supplied as an argument to 
# the method. The smallest such star you need to handle is a 7x7 grid.

require 'pry'


def star(num)
  iterator = 1
  spaces_between_stars = num / 2
  spaces_before_stars = -1
  switch = false 

  while iterator < num 
    if (num / 2 + 1) != iterator
      if switch 
        spaces_between_stars += 1
        spaces_before_stars -= 1
      else 
        spaces_between_stars -= 1
        spaces_before_stars += 1
      end
      puts " " * spaces_before_stars + "*" + " " * spaces_between_stars + 
                                       "*" + " " * spaces_between_stars + 
                                       "*" + " " * spaces_between_stars
    else 
      puts "*" * num
      switch = true
    end
    # binding.pry
    iterator += 1


  end
end
star(7)
puts "--------------"
star(9)
puts "--------------"
star(15)
puts "--------------"
# Alternatively

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = " " * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

# def star(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(1) { |distance| print_row(grid_size, distance) }
#   puts "*" * grid_size
#   1.upto(max_distance) { |distance| print_row(grid_size, distance) }
# end

# star(15)
# print_row(9, 4)
# print_row(9, 3)
# print_row(9, 2)
# print_row(9, 1)
# puts "*" * 9
# print_row(9, 1)
# print_row(9, 2)
# print_row(9, 3)
# print_row(9, 4)
# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *