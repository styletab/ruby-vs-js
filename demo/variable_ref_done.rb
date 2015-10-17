# Some magic to show memory addresses of variables.
require_relative '../lib/mem_addr.rb'

# Computer Memory.
# Holds binary, 1's and 0's, that represent an object.
# Consist of bytes or words that exist at addresses.

# Diagram here!!!

# Computer Address/Location.
# Locates a byte or word in memory.

# A variable is named by an "identifier" that is contained within
# a "scope". A variable "references" computer memory that contains
# the binary representation of an "object".

# Indentifier:
# A set of characters that give a variable it's name.
# Ex: buick, joe, toe, bouncy_castle

# Scope:
#   A container that holds a bunch of variables.
#   (For now we will ONLY be dealing with one scope,
#    The "Global" scope. We'll see more scopes later)


# Assign variable x to 10.
x = 10

# Ruby will:
# - Notice that this statement is an assignment because '=' is the assignment operator.
# - Look at the Left Hand Side (LHS) of the assignment.
# - See if the indentifier "x" exists in the current, Global, scope?
#   (what are valid identifiers for variables?)
# - Identifier 'x' is NOT found, so create it in the Global Scope.
# - Allocate computer memory to hold the integer 10.
# - Put the binary value 1010 (base 10) in this memory.
# - Associate memory address/location of this memory with the identifier 'x'


# 'x' is an indentifier that point to a memory address that contains the number 10, 1010.

# print out value of x.
print 'The value of x is '
puts x

# What's going on in the last statement?
# - Look for the identifier 'x' in the current scope, which is the global scope.
# - Found the indentifier 'x'. We just created it!
# - Follow the memory address that identifier 'x' points to.
#   (This is called deferencing a pointer)
# - Get the value contain in memory at this address.
# - print out this value

puts 'The variable, identified by x, has a hex memory address of ' + x.mem_addr


# Create another variable and set it's value
y = 25
puts 'y is ' + y.to_s
puts 'The variable y has a hex memory address of ' + y.mem_addr

# Assign one variable from the next
# Really has 2 variables pointing to the same address!
x = y
puts 'x is ' + x.to_s
puts 'y is ' + y.to_s
puts 'The variable x has a memory address of ' + x.mem_addr
puts 'The variable y has a memory address of ' + y.mem_addr

# re-assign variable y
y = 899
puts 'x is ' + x.to_s
puts 'y is ' + y.to_s
puts 'The label x has a memory address of ' + x.mem_addr
puts 'The label y has a memory address of ' + y.mem_addr

exit
