puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
age_to_retire = gets.chomp.to_i

current_year = Time.now.year
work_years_to_go = age_to_retire - age
retirement_year = current_year + work_years_to_go

puts "It's 2020. You will retire in #{retirement_year}."
puts "You only have #{work_years_to_go} years of work to go!"