# In the easy exercises, we worked on a problem
# where we had to count the number of uppercase
# and lowercase characters, as well as characters
# that were neither of those two. Now we want to
# go one step further.

# Write a method that takes a string, and then
# returns a hash that contains 3 entries: one
# represents the percentage of characters in the
# string that are lowercase letters, one the
# percentage of characters that are uppercase
# letters, and one the percentage of characters
# that are neither.

# You may assume that the string will always contain
# at least one character.

def letter_percentages(string)
  chars = string.split('')

  hash_of_percentages = { lowercase: 0.0, uppercase: 0.0, neither: 0.0}
  hash_of_percentages = calculate_chars(chars, hash_of_percentages)

  total_chars = chars.length
  hash_of_percentages = calculate_percentages(hash_of_percentages, total_chars)

  return hash_of_percentages
end

def calculate_chars(chars, hash_of_percentages)
  lowercase_chars = ('a'..'z').to_a.join('')
  uppercase_chars = lowercase_chars.upcase

  chars.each do |char|
    if lowercase_chars.include?(char)
      hash_of_percentages[:lowercase] += 1
    elsif uppercase_chars.include?(char)
      hash_of_percentages[:uppercase] += 1
    else
      hash_of_percentages[:neither] += 1
    end
  end

  hash_of_percentages
end

def calculate_percentages(hash_of_percentages, total_chars)

  hash_of_percentages.each do |char_type, number_of_occurences|
    hash_of_percentages[char_type] = ((number_of_occurences / total_chars) * 100).round(2)
  end
  return hash_of_percentages

end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef')  == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')