# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(words)
  words_arr = words.split
  words_arr.select.with_index(1) { |word, index| words_arr.size - 1 == index  }.join
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Alternatively

def penultimate(words)
  words_array = words.split
  words_array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

def get_middle_word(sentence)
  words = sentence.split
  return sentence if sentence.size == 0
  words.select.with_index(1) { |word, index| (words.size / 2.0).ceil == index }.join
end

p get_middle_word('Launch School is the greatest!')
p get_middle_word('')
p get_middle_word('Launch')