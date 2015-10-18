# require 'pry'
# binding.pry

# While conditional will run the code inside the loop until the condition is true.
number_of_students = 3
max_num_students = 25
while number_of_students < max_num_students
  number_of_students += 1
  puts "Open for enrollment, we have #{number_of_students} students"
end

number_of_students = 22

# Can put the conditional at the end. If you always want to run the code at least once.
begin
  number_of_students += 1
  puts "Alternative, Open for enrollment, we have #{number_of_students} students"
end while  number_of_students < max_num_students

# Until conditional will run the code inside the loop until the condition is true.
number_of_students = 7
until number_of_students >= max_num_students
  number_of_students += 1
  puts "Again, Open for enrollment, we have #{number_of_students} students"
end

# Lets use the break keyword to break out of the loop
number_of_students = 11
while number_of_students <  max_num_students
  number_of_students += 1
  puts "Class of 15, Open for enrollment, we have #{number_of_students} students"
  break if number_of_students == 15
end

# loop will run forever, weeeee. (Not often used)
number_of_students = 11
loop do
  number_of_students += 1
  # only allow 23 students.
  break if number_of_students == 23
  # don't print if for students 16 thru 19
  next if (number_of_students >= 16) && (number_of_students <= 19)
  puts "Class of 23, Open for enrollment, we have #{number_of_students} students"
end

# for loop. Lets ignore this. Haven't seen it used.

# Same goes for redo and retry
