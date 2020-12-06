def triangle(num)
  number_of_stars = 1
  num.downto(1) do |number_of_spaces|
    puts " " * (number_of_spaces - 1) + "*" * number_of_stars
    number_of_stars += 1
  end
end

triangle(5)
triangle(9)