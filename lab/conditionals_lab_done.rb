print  "Enter your grade [[A|B|C|D|F]]: "
grade = gets.chomp!.downcase

if grade == 'a'
  puts "Your are a superior specimin, aren't you?"
elsif grade == 'b'
  puts "Nice work!"
elsif grade == 'c'
  puts "You're OK, you're passing"
elsif grade == 'd'
  puts "Dude, gotta work a little harder. Or get a better teacher, ay?"
elsif grade == 'f'
  puts "Aaaah, eeem, not doing good lets figure out a better way"
else
  puts "Invalid input: Enter [A|B|C|D|F]"
end
