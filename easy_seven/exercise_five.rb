require 'pry'

def staggered_case_with_word_separation(words)
  new_words = []
  words.split(' ').each do |word|
    new_word = ''
    index = 0
    word.split('').each do |char|
      index.even? ? new_word += char.upcase : new_word += char.downcase
      index += 1
    end
    new_words << new_word
  end
  new_words.join(' ')
end

p staggered_case_with_word_separation('I Love Launch School!') # == 'I LoVe lAuNcH ScHoOl!'
p staggered_case_with_word_separation('ALL_CAPS') 
p staggered_case_with_word_separation('ignore 77 the 444 numbers')

def staggered_case(words)
  staggered_chars = words.split('').map.with_index(0) do |char, index|
    index.even? ? char.upcase : char.downcase
  end
  staggered_chars.join('')
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Alternatively

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    need_upper ? result += char.upcase : result += char.downcase
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'