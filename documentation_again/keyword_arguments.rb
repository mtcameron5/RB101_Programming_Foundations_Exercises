# What does the code print?

5.step(to: 10, by: 3) { |value| puts value }
# The methods signature:
#  step(by: step, to: limit) { |i| block } => self
#  step(by: step, to: limit) => an_enumerator
#  step(by: step, to: limit) => an_arithmetic_sequence
#  step(limit=nil, step=1) { |i| block } => self
#  step(limit=nil, step=1) => an_enumerator
#  step(limit=nil, step=1) => an_arithmetic_sequence


1.step(10, 2) { |i| print i, " " }
# will produce 1 3 5 7 9

# Example will output 5 and 8