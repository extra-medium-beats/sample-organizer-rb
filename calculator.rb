def multiply (first_num, second_num)
  first_num.to_f * second_num.to_f
end

def add (first_num, second_num)
  first_num.to_f + second_num.to_f
end

def subtract (first_num, second_num)
  first_num.to_f - second_num.to_f
end

def division (first_num, second_num)
  first_num.to_f / second_num.to_f
end

def romulo (first_num, second_num)
  first_num.to_f % second_num.to_f
end

puts "Simple Calculator"
20.times {print "-"}
puts
puts "Please Enter Your First Number"
first_num = gets.chomp
puts "Please Enter Your Second Number"
second_num = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction 4 for division, 5 for R.O.M.U.L.O"
user_entry = gets.chomp
puts "You Selected #{user_entry}"

if user_entry == "1"
  puts "You have chosen to MULTIPLY so here: #{multiply(first_num, second_num)}"
elsif user_entry == "2"
  puts "You have chosen to ADD so here: #{add(first_num, second_num)}"
elsif user_entry == "3"
  puts "You have chosen to SUBTRACT so here: #{subtract(first_num, second_num)}"
elsif user_entry == "4"
  puts "You have chosen to DIVIDE so here: #{division(first_num, second_num)}"
elsif user_entry == "5"
  puts "You have chosen to R.O.M.U.L.O so here: #{romulo(first_num, second_num)}"
else
  puts "Invalid Entry - nice try."
end
