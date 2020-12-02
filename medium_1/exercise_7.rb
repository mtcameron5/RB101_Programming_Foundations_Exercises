# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the
# words 'zero', 'one', 'two', 'three', 'four', 'five',
# 'six', 'seven', 'eight', 'nine' converted to a string of digits.

def word_to_digit(string)
  words = string.split()
  converted_string = words.map do |word|
    if word.include?('.')
      number = num_to_string(word.gsub('.', ''))
      number.to_s + '.'
    else
      num_to_string(word)
    end
  end
  converted_string.join(' ')
end


def num_to_string(string)
  case string
  when 'zero'  then 0
  when 'one'   then 1
  when 'two'   then 2
  when 'three' then 3
  when 'four'  then 4
  when 'five'  then 5
  when 'six'   then 6
  when 'seven' then 7
  when 'eight' then 8
  when 'nine'  then 9
  else string
  end
end

# Alternatively

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'