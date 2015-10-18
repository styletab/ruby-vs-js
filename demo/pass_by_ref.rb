# require 'pry'
# binding.pry

age = 10
# Create a variable age with a value of 10.
# Another words, Ruby:
# 1. Created an identifier, age, in global scope.
# 2. Allocated memory on the Heap for a Fixnum object at a
# specific memory address.
# 3. Filled in this memory with a value of 10.
# 4. Created a reference, or pointer, from this identifier to
# this object's memory address.

# TODO: Create a diagram here!

# Note: all Ruby Objects have an object_id attribute that uniquely
# identify the object.

# This will print out the Scope, Line Number in the File, Object ID
puts "Global scope l:#{__LINE__}: age = #{age}, age.object_id = #{age.object_id}"

def get_older(age)

  puts "get_older scope l:#{__LINE__}: age = #{age}, age.object_id = #{age.object_id}"

  # Assignment to a NEW value will:
  # Change the reference (memory address) that the 'age' identifier is pointing to.
  # Now age identifier in get_older scope is pointing to a new Fixnum object
  # with a value of 11.
  # This does steps 1-4 above but the identifier is only in the local, get_older,
  # scope.
  age = age + 1

  # Assignment to the same value will:
  # THIS WILL NOT CHANGE THE REFERENCE (memory address) THAT THE 'age' IDENTIFIER
  # IS POINTING TO.
  # age = age

  puts "get_older scope l:#{__LINE__}: age = #{age}, age.object_id = #{age.object_id}"
  age
end

# CALL get_older, returns a reference to Fixnum object created in get_older method
# and sets identifier get_older_result to this Fixnum object.
get_older_result = get_older(age)

puts "Global scope l:#{__LINE__}: get_older_result = #{get_older_result}, get_older_result.object_id = #{get_older_result.object_id}"

puts "Global scope l:#{__LINE__}: age = #{age}, age.object_id = #{age.object_id}"
