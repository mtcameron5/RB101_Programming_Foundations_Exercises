# You have a bank of switches before you, numbered from 1 to n.
# Each switch is connected to exactly one light that is initially
# off. You walk down the row of switches and toggle every one of
# them. You go back to the beginning, and on this second pass,
# you toggle switches 2, 4, 6, and so on. On the third pass,
# you go back again to the beginning and toggle switches 3, 6,
# 9, and so on. You repeat this process and keep going until
# you have been through n repetitions.

# Write a method that takes one argument, the total number
# of switches, and returns an Array that identifies which
# lights are on after n repetitions.

def light_switches(num)
  lights_arr = []
  1.upto(num) do |n|
    lights_arr.push([n, true])
  end

  2.upto(num) do |n|
    lights_arr.each do |light|
      light[1] = !light[1] if light[0] % n == 0
    end
  end

  lights_on = []
  lights_arr.each do |arr|
    lights_on << arr[0] if arr[1]
  end
  return lights_on
end

p light_switches(4)
p light_switches(10)
p light_switches(1000)