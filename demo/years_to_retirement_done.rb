retire_age = 65

puts "What is you age? "

current_age = gets.chomp!.to_i
years_to_go = retire_age - current_age

puts "Years until retirement = " + years_to_go.to_s
