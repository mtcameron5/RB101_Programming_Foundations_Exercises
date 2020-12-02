# Write a method that displays a 4-pointed diamond
# in an n x n grid, where n is an odd integer that
# is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.


def diamond(num)
  num_of_loops = num / 2
  number_of_stars = 1

  num_of_loops.downto(1) do |number_of_spaces|
    puts " " * number_of_spaces + "*" * number_of_stars
    number_of_stars += 2
  end

  puts "*" * number_of_stars

  1.upto(num_of_loops) do |number_of_spaces|
    number_of_stars -= 2
    puts " " * number_of_spaces + "*" * number_of_stars
  end
end


# Alternatively

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - (2 * distance_from_center)
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end


diamond(3)
# *
#***
# *

diamond(5)

#  *
# ***
#*****
# ***
#  *

diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *