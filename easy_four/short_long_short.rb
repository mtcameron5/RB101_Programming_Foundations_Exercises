# Write a method that takes two strings as arguments,
# determines the longest of the two strings, and then
# returns the result of concatenating the shorter string,
# the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

def short_long_short(string_one, string_two)
  string_one.length > string_two.length ? string_two + string_one + string_two :
                                          string_one + string_two + string_one
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"