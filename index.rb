# Start of script

puts "Quick Motion Chart calculator - Programmed in Ruby"
sleep 0.25

puts "Enter a Velocity: "

# Allows user to state/intake the amount of velocity

def numberv()
  $numv = gets.chomp()
validv = Integer($numv) rescue false
if validv
  else
    puts "Invalid - Enter valid number"
    puts "Enter a Velocity: "
    numberv()
  end
end

numberv()

# Allows user to state/intake the amount of decreasing or increasing

puts "Enter a rate of decrease or increase: "
def numbera()
  $numa = gets.chomp()
valida = Integer($numa) rescue false
if valida
  else
    puts "Invalid - Enter valid number"
    puts "Enter a decrease or increase: "
    numbera()
  end
end

numbera()

# Allows you to get the users requested amount of answers

nums = -1

puts "How many outcomes do you want? "
def numberout()
  $outcomes = gets.chomp()
$outcomes_test = Integer($outcomes) rescue false
if $outcomes_test
  else
    puts "Invalid - Enter valid number"
    puts "Enter a outcome: "
    numberout()
  end
end

numberout()

# Runs the Δx (DeltaX) formula

until nums > $outcomes_test - 2

  if $outcomes == 1
    $outcomes = nums + 1
  end
    nums = nums + 1

    num2 = $numv.to_i * nums.to_i
    num3 = 0.5.to_f * $numa.to_i
    num4 = num3.to_i * nums.pow(2).to_i
    num5 = num2.to_i + num4.to_i

  total = num5.to_i

    puts("Total is " + total.to_s)
    sleep 0.5
end

# Finishes script

puts("\nScript finished - Restart if you wish to run again.")