# Create a variable and assign it a value
# using the Assignment Operator (=).
current_address = "35 Sixth Ave"
puts "current_address is " + current_address
# WARNING: Don't confuse the Assignment Operator, =, with the Equality Operator, ==

# Reassign the value of the variable
current_address = "503 Main St."
puts "\ncurrent_address is " + current_address

# Create another variable and set it's value
work_address = "52 Melcher St"
puts "\nwork_address is " + work_address

# Assignment of one variable using another variable.
work_address = current_address
puts "\ncurrent_address is " + current_address
puts 'work_address is ' + work_address

# gsub creates a NEW STRING and replaces 'Main' with 'Elm'
new_address = current_address.gsub(/Main/, 'Elm')
puts "\nnew_address after gsub is " + new_address
puts 'current_address after gsub is ' + current_address
puts 'work_address is after gsub is ' + work_address
#Notice how current or working address has NOT been changed

# gsub! changes the string current_address
current_address.gsub!(/Main/, 'Elm')
puts "\ncurrent_address after gsub! is " + current_address
puts 'work_address is after gsub! is ' + work_address
# Notice how current BOTH working address and current address have been changed
# This is because current and working address point to the same
# String Object!!!

# Change current_address. This will create a new String object
# and set current_address to point to this new String object.
current_address +=  " Stoneham"
puts "\ncurrent_address after += is " + current_address
puts 'work_address is after += ' + work_address

# Reset work_address to reference same string as current_address.
work_address = current_address

# This will change current_address in place. It will
# change the String that current_address is pointing
# to.
current_address << ", MA"
puts "\ncurrent_address after << is " + current_address
puts 'work_address is after << is ' + work_address

# The nil keyword/object is used to indicate that a variable
# has no value.
jill_address = nil
puts "Jill's address is " + jill_address.inspect

# Variables only come into existence when they assigned a value
puts last_address
