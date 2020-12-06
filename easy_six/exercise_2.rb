# Write a method that takes an array of strings, 
# and returns an array of the same string values, 
# except with the vowels (a, e, i, o, u) removed.
require 'pry'

VOWELS = 'aeiou'
def remove_vowels(string_arr)
  # binding.pry
  string_arr.map do |string|
    string.split('').map { |str| VOWELS.include?(str.downcase) ? nil : str }.compact.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))

p remove_vowels(%w(green YELLOW black white)) # == %w(grn YLLW blck wht)