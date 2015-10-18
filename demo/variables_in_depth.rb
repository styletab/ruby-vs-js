require_relative '../lib/mem_addr.rb'

x = 10
# Ruby will:
# - Notice that this statement is an assignment. '=' is the assignment operator.
# - Look at the Left Hand Side (LHS) of the assignment.
# - See if the identifier "x" exists. (Looks in the current, global, scope.)
# - Identifier 'x' is NOT found, so create the identifier 'x'
# - Allocate computer memory for the Fixnum object, 10, in the Heap at a memory address.
# - Make this allocated memory value have the value of 10.
# - Point the indentifier "x" at this memory.
# Now identifier "x" has a the address of, or reference, to this allocated memory.
# which holds the value of 10.

# print out value of x.
# Actually this will follow the identifier "x" memory address and print out it's value
puts "\n x is #{x}, x.object_id = #{x.object_id}"
puts 'The identifier x references memory address => ' + x.mem_addr

# Ruby will:
# - Notice that this statement is assignment. '=' is the assignment operator.
# - Look at the Left Hand Side (LHS) of the assignment.
# - See if the identifier "x" exists.
# - Identifier 'x' is found do nothing!! (Different from above)
# - Allocate computer memory for 13.
# - Make this allocated memory value 13.
# - Point the identifier "x" at this memory. Now identifier "x" has a the address of, "reference", this allocated memory.
x = 13

# print out value of x
puts "\n x is #{x}, x.object_id = #{x.object_id}"
puts 'The identifier x references memory address => ' + x.mem_addr

# Create another variable and set it's value
y = 25
puts "\n y is #{y}, y.object_id = #{y.object_id}"
puts 'The identifier y references memory address =>  ' + y.mem_addr

# Assign one variable from the next
x = y
puts "\n x is #{x}, x.object_id = #{x.object_id}"
puts " y is #{y}, y.object_id = #{y.object_id}"
puts 'The identifier x references memory address => ' + x.mem_addr
puts 'The identifier y references memory address => ' + y.mem_addr

y = 899
puts "\n x is #{x}, x.object_id = #{x.object_id}"
puts " y is #{y}, x.object_id = #{y.object_id}"
puts 'The identifier x references memory address => ' + x.mem_addr
puts 'The identifier y references memory address => ' + y.mem_addr
