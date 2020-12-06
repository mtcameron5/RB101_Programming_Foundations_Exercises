# Write a method that takes a string as an argument and returns 
# a new string in which every uppercase letter is replaced by its 
# lowercase version, and every lowercase letter by its uppercase 
# version. All other characters should be unchanged.

def swapcase(string)
  string.split('').map { |char| char == char.upcase ? char.downcase : char.upcase }.join('')
end

p swapcase('CamelCase')

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Alternatively
def swapcase(string)
  new_string = string.split('').map do |char|
    char == char.upcase ? char.downcase : char.upcase
  end
  new_string.join
end

p swapcase('CamelCase')

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Alternatively

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('CamelCase')

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
