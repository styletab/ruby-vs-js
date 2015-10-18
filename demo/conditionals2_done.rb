require 'pry'

# Breakpoint with pry
binding.pry

# If/Else statement
# General Form is:
# if bool-expr
#    do this if bool-expr is true.
# else
#    do this if bool-expr is false.
# end

if true
  puts "Say Hello"
else
  puts "Say Goodby"
end

if false
  puts "Say Hello"
else
  puts "Say Goodbye"
end

# Boolean Expression (bool-expr) '33 < 37' evaluates to true
# Then invoke code inside the if clause
# Else invoke the code inside the else clause.
if 33 < 37
  puts "Say Hello"
else
  puts "Say Goodbye"
end

old_age = 60
person_age = 56

# If statement can come after statement,
# reads like english, huh?
puts "Hi Oldie" if person_age > old_age

middle_age = 40
person_age = 43

# Elsif
if person_age > old_age
  puts 'Hi Oldie'
elsif person_age > middle_age
  puts 'Hi Middie'
else
  puts 'Yuz a yung un'
end

# Unless, opposite of If
unless old_age > person_age
  puts "Hi Oldie"
else
  puts 'Hi younger one'
end

# Not crazy about unless.
# But this is OK.
is_vegan = true
puts "eating veggies" if is_vegan

# Case statement. (Not used that often)
# When you need to take a variety of different actions based on the
# value of a single variable, multiple if..elsif tests are verbose and
# repetitive.
person_age = 43

case
when person_age >= old_age
  puts "Hey Oldster"
when person_age >= middle_age
  puts "Hey Midster"
else
  puts "Hey Youngster"
end


# Unlike other langauges, for example C, you do NOT need a break
# statement in each when clause. Only first matching bool-expr will
# execute.
# For Example: This will ONLY print "Your a Tom"
# What if we match a couple of when boolean expressions?
name = "Tom Smith"
case
when name.include?("Tom")
  puts "Your a Tom"
when name.include?("Smith")
  puts "Your a Smith"
when name == "Tom Smith"
  puts "Your a Tom Smith"
else
  puts "Can find any of the above"
end

# Can match multiple values in the when bool-expr
today = "Sunday"
case today
when "Monday", "Wednesday"
  puts "It's a long day"
when "Saturday", "Sunday"
  puts "It's the weekend"
end

# When the target expression, target-expr, equals the boolean expression in the 'when' clause.
# Execute/Invoke the code inside the 'when' clause.

# If none of the 'when' clauses bool-expr equals the target-expr
# Execute/Invoke the code inside the else clause.

# case target-expr
# when boolean-expr
#  Code to execute
# when boolean-expr
#  Code to execute
# else boolean-expr
#  Code to execute if
# end
