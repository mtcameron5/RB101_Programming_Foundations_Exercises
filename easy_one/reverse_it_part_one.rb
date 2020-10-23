def reverse_sentence(sentence)
  words = sentence.split
  new_sentence = ""
  words.reverse.map { |word| new_sentence += "#{word} " }
  new_sentence.strip
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Alternatively, and the more idiomatic version

def reverse_sentence(string)
  string.split.reverse.join(' ')
end