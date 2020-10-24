# Write a program that will ask a user for an input of a word
# or multiple words and give back the number of characters.
# Spaces should not be counted as a character.

puts "Please write words or multiple words"
string = gets.chomp

characters_without_spaces = string.chars.reject { |char| char == " " }
# Alternatively, to remove spaces: string.delete(' ')
number_of_characters = characters_without_spaces.length
puts "There are #{number_of_characters} characters in #{string.inspect}."