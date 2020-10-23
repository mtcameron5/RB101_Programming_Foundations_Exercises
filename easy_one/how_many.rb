vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(string)
  hash_of_occurences = Hash.new(0)
  string.each { |word| hash_of_occurences[word.downcase] += 1 }
  hash_of_occurences.each { |key, value| puts "#{key} => #{value}" }
end

count_occurences(vehicles)