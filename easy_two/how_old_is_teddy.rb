age = rand(20..200)

puts "Enter the name, and we will calculate the birthday"
name = Kernel.gets().chomp()
name = "Teddy" if name.empty?

puts "#{name} is #{age} years old!"