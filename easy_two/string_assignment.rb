# What does this print out? Can you explain these results?


name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# the code prints out BOB and then BOB.
# Explanation:
  # name and save_name point to the same value or object (i.e. they have the same object_id)
  # when upcase! is called on name, both name and save_name are changed as upcase is considered
  # a 'mutating' method