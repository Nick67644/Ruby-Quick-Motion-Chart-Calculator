puts "Quick Motion Chart calculator - Programmed in Ruby"

sleep 0.25

puts "Enter a Velocity: "
numv = gets.chomp()
validv = Integer(numv) rescue false
if validv
else
  abort "Invalid - Enter valid number";
end

puts "Enter a rate of decrease or increase: "
numa = gets.chomp()
valida = Integer(numa) rescue false
if valida
else
  abort "Invalid - Enter valid number";
end

nums = -1

puts "How many outcomes do you want? "
outcomes = gets.chomp()
outcomes_test = Integer(outcomes) rescue false
if outcomes_test
else
  abort "Invalid - Enter valid number";
end

until nums > outcomes_test - 2

  if outcomes == 1
    outcomes = nums + 1
  end
  nums = nums + 1

  num2 = numv.to_i * nums.to_i
  num3 = 0.5.to_f * numa.to_i
  num4 = num3.to_i * nums.pow(2).to_i
  num5 = num2.to_i + num4.to_i

  total = num5.to_i

  puts("total is " + total.to_s)
  sleep 0.5
end