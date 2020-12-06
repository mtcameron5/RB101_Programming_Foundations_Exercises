def word_cap(string)
  string.split.each { |word| word.capitalize! }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Alternatively
def word_cap(words)
  words.split.map(&:capitalize).join(' ')
  # Which is the same as
  words.split.map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Ruby conveniently provides the String#capitalize method to capitalize 
# strings. Without that method, how would you solve this problem? Try 
# to come up with at least two solutions.

def word_cap(words)
  words.split.map { |word| word[0].upcase + word[1, word.size].downcase }.join(' ')
end

p word_cap('four score and seven')  == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap(words)
  word_arr = words.split()
  index = 0
  word_arr.each do |word|
    word_arr[index] = word[0].upcase + word[1, word.size].downcase
    index += 1
  end
  word_arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
