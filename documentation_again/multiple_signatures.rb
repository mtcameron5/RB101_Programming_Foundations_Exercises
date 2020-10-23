# What do each of these puts statements output?

a = %w(a b c d e)
# puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# fetch(index) => obj
# fetch(index, default) => obj
# fetch(index) {|index| block} => obj

# the first throws an IndexError exception, as the index 7, lies outside of the array bounds.
# the second 'beats me' is output, as it acts as the default value
# the third outputs 49, because when a block is given it will be executed
  # when an invalid index is referenced

# Note in particular that having multiple lines in the signature is yet another way
# in which the ruby documentation indicates that an argument is optional.
# In this case, both default and the blocks are optional arguments, but they
# can't be used together.

