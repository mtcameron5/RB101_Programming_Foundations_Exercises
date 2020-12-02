# Write a method that takes a string as argument,
# and returns true if all parentheses in the string
# are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur
# in matching '(' and ')' pairs.

def balanced?(string)
  is_balanced = true

  left_parentheses_count  = 0
  right_parentheses_count = 0

  string.split('').each do |char|
    is_balanced = false if right_parentheses_count > left_parentheses_count
    if char == '('
      left_parentheses_count += 1
    elsif char == ')'
      right_parentheses_count += 1
    end
  end

  if is_balanced == false
    return is_balanced
  else
    return left_parentheses_count == right_parentheses_count
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# Alternatively

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# There are a few other characters that should be matching
# as well. Square brackets and curly brackets normally
# come in pairs. Quotation marks(single and double) also
# typically come in pairs and should be balanced. Can
# you expand this method to take into account those characters?

def balanced?(string)
  hash_of_chars = {
    single_quote: 0,
    double_quote: 0,
    square_bracket: 0,
    curly_bracket: 0,
    parentheses: 0
  }
  string.each_char do |char|
    case char
    when "\""
      hash_of_chars[:double_quote] += 1
    when "'"
      hash_of_chars[:single_quote] += 1
    when "("
      hash_of_chars[:parentheses] += 1
    when ")"
      hash_of_chars[:parentheses] -= 1
    when "["
      hash_of_chars[:square_bracket] += 1
    when "]"
      hash_of_chars[:square_bracket] -= 1
    when "{"
      hash_of_chars[:curly_bracket] += 1
    when "}"
      hash_of_chars[:curly_bracket] -= 1
    end
    return false if hash_of_chars[:parentheses] < 0 || hash_of_chars[:square_bracket] < 0 ||
                    hash_of_chars[:curly_bracket] < 0
  end

  evenly_balanced = hash_of_chars[:curly_bracket].zero? && hash_of_chars[:square_bracket].zero? &&
                    hash_of_chars[:parentheses].zero? && hash_of_chars[:double_quote].even? &&
                    hash_of_chars[:single_quote].even?

  return evenly_balanced
end

p balanced?("dog \" ['and'] {hog} \"")