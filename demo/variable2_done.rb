# Create a variable age and assign it a value
# Assignment Operator (=).
current_address = "35 Sixth Ave"
puts 'current_address is ' + current_address

# WARNING: Don't confuse the Assignment Operator, =, with the Equality Operator, ==

# Reassign the variable
current_address = "503 Main St."
puts 'current_address is ' + current_address

# REMEMBER: That the variable is ONLY pointing to an object.

puts 'current_address is pointing ot the object with an id of ' + current_address.object_id.to_s

current_address = "44 Warren St"
puts 'current_address is ' + current_address
puts 'current_address is pointing ot the object with an id of ' + current_address.object_id.to_s

# Create another variable and set it's value
work_address = "52 Melcher St"
puts 'work_address is ' + work_address

# Assignment of one variable using another variable.
work_address = current_address
puts 'current_address is ' + current_address
puts 'work_address is ' + work_address
puts 'current_address is pointing ot the object with an id of ' + current_address.object_id.to_s
puts 'working_address is pointing ot the object with an id of ' + current_address.object_id.to_s

# NOTICE HOW BOTH CURRENT ADDRESS AND WORKING ADDRESS ARE POINTING TO THE SAME INSTANCE OF A STRING

# Create a set of variables
current_age = 44
retire_age = 65
years_to_go = retire_age - current_age

# What is current_age pointing to?
# What's the object that current_age is pointing to's class?

# What is retire_age pointing to?
# What's the object that current_age is pointing to's class?

# Notice the #to_s method. It's converting an integer to string
puts "years until retirement = " + years_to_go.to_s

# Cast to a different type/class.
twenty_three_integer = "23".to_i
twenty_three_integer = "23".to_f
