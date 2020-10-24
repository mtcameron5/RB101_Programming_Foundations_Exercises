puts "What is your name?"
name = gets.chomp

if name[-1] == "!"
  name.chop!
  puts "Hello #{name}. Why are we screaming?".upcase
else
  puts "Hello #{name}."
end


