# What will the following code print, and why? Don't run the code until you
# have tried to answer

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# The following will print Moe, Larry CURLY SHEMP Harpo CHICO Groucho Zeppo
# value.upcase! will affect the items in the second array, because they point
# to the same object and .upcase! is a mutating method