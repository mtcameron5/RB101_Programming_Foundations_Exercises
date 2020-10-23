# The Array#bsearch method is used to search ordered Arrays more quickly than #fine
# and #select can. Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

# How would you search this Array to find the first element whose value exceeds 8.

p a.bsearch { |num| num > 8 }

# The documentation for Array#bsearch has the signature:
# bsearch {|x| block} => elem

# This signature shows that #bsearch takes only one argumen --  a block --
# and returns an element of the Array to which it is applied.
