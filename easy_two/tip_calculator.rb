puts "What is the bill? "
bill = Kernel.gets().chomp().to_f()

puts "What is the tip percentage? "
tip_percentage = gets().chomp().to_f()

# convert tip amount to decimal and multiply by the total bill. round to 2 points after decimal.
tip = ((tip_percentage * 0.01) * bill).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip.to_s)}"
puts "The bill is $#{format("%.2f", total.to_s)}"



