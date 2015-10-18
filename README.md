![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

## Objects

**Objects** are really just "things". Lets list some objects.

* top song of 1992 (Jeremy).
* my songcloud playlist.
* my first car, 69 Ford LTD.
* your second cousin jane.
* the book "Stranger in a Strange Land".
* the number 23.


In programming we **represent** objects, that may or may not, live in the real world in a couple of different ways. 

* Physically in the computers memory in 1 and 0's. We really don't have to think much about this in Ruby.  

* Mainly we represent them in our head. We have a mental model of the objects in our ruby programs.  
* As a bunch of text that follows the "rules", i.e. syntax, of Ruby in a file.

Typically, we want the representation of an object in our head  to reflected be as text in a Ruby file. 

## Classes
Objects, or things, can be classified. For example:

* top song of 1992 (Jeremy). Is "classified" as a __Song__.  
* my songcloud playlist. Is a __Playlist__.  
* my first car. Is a __Car__.  
* your second cousin jane. Is a __Person__.  
* the book "Stranger in a Strange Land". Is a __Book__.  
* the number 23. Is an Integer, aka __Fixnum__ in Ruby.

We **"classify"** objects in **Object Oriented Programming (OOP)** by using a **Class**. So, Song, Playlist, Car, Person, Book and Integer are all Classes. 

We'll get into how these are represented and created later in the
week.

### Object's may have data *properites* and *behavior*.  

_(In Ruby an Object's properties are implemented using **attributes** and behavior is implemented using **methods**)._  

* Each Song will have a name, duration, artist name data attributes and will have a play method.    
	* The top song of 92 name is 'Jeremy', the artist is 'Pearl Jam' and plays for 5 minutes and 18 seconds.  
* Each Car will have make, model and year attributes. And it will have a reverse method.  
	* My first car was a 1969, Ford LTD.  
* Each Person will have a name and DOB and they will be able to talk. It's behavior is talk.  
* Each Fixnum will have a add,subtract, mult and divide methods.
	* The integer 23 can be added, subtracted, etc.

## Running Ruby


#### Command Line
Ruby can be run on the command line:

```bash
$ ruby hello_world.rb
```

The ``ruby`` command takes a number of options and arguments. ``ruby --help`` but typically we'll just pass a name of a file with Ruby source code to the ruby command. 

> Create file demo/hello_world.rb

```ruby
puts "Hello World"
```

> And run it.

```bash
$ ruby demo/hello_world.rb
```

*(Note: the ``puts`` method just print's out the String value passed to it.)*

#### Read Evaluate Print Loop (REPL)

Many languages have a **REPL** that allow us to evaluate expressions and statements. For example, one can use ``node`` as a javascript **REPL**.

In Ruby we use [Pry](http://pryrepl.org/). So, lets install and run pry.

```bash 
$ gem install pry
$
$  pry
[1] pry(main)> 
[2] pry(main)> 
[3] pry(main)> 44 + 66
=> 110
[4] pry(main)> "hello world"
=> "hello world"
[5] pry(main)> 
```
## Comments

The pound, ``#``, character is used to indicate a **comment**. So a **comment starts with a pound and finishes at the end of a line.**


```ruby
# This is comment


# And here we comment a couple of 
# lines.
# Yep, this can go on forever.
```

## Data Types

In Ruby, *almost*, everything is an object created by a class. Some Ruby classes are *built into the language*. These are often referered to as **Data Types**

Some of these are [Fixnum](http://ruby-doc.org/core-2.2.0/Fixnum.html), [Float](http://ruby-doc.org/core-2.2.0/Float.html), Booleans ([true](http://ruby-doc.org/core-2.2.0/TrueClass.html) and [false](http://ruby-doc.org/core-2.2.0/FalseClass.html)), [String](http://ruby-doc.org/core-2.2.0/String.html), [Symbol](http://ruby-doc.org/core-2.2.0/Symbol.html) and [Range](http://ruby-doc.org/core-2.2.0/Range.html).

Let's explore these Ruby **Data Types**.

#### Fixnum and Floats

Some Fixnum objects, aka integers, are 10, 238, 1099, 87243956 and 87_243_956. 

Some Float objects are 1.2, 0.5, .5 12.10487, 12.5e1, 12.5e-1 and 0.67982e6.

> Create a file demo/numbers.rb

```ruby
# create Integers and print them to the terminal.

puts 10
puts 238
puts 1099
puts 87243956
puts 87_243_956
puts 33.class


# create floats and print them to the to the terminal.
puts 1.2
puts 0.5
puts 0.5
puts 12.10487
puts 12.5e1
puts 12.5e-1
puts 0.67982e6
puts 2.5.class

# Number arithmetic

puts 1 + 33
puts 5 - 2
puts 1.2 * 3  # may be a little rounding error here?
puts 10 / 2
puts 9 % 2
puts (10 * 4).class
```

> And run it

``bash 
$ ruby numbers.rb
``

> Take a look at the [Fixnum](http://ruby-doc.org/core-2.2.0/Fixnum.html) class.

> Take a look at the [Float](http://ruby-doc.org/core-2.2.0/Float.html) class.  

Some methods for integers and floats are + addition, - subtraction, * multiplication, \ division, and % modulus. *Often these are called operators.*

These and other operators have precedence. When ruby sees mulitple operators, (==, <, >, &&, ||, ...), it will follow a set of evalation rules.

[Operator Precedence](http://www.techotopia.com/index.php/Ruby_Operator_Precedence)
  
#### Booleans

There are only two boolean objects, **true** and **false**. Most objects in Ruby evaluate to **true** and only **false** and **nil** evaluate to **false**.

For example when the operators ``==``, ``<`` or `>` are evaluating two Ruby objects each object will be coerced into either **true** or **false**.

> Create a file demo/boolean.rb and run it

```ruby
# There are only two boolean values.
puts true
puts false

puts 33 == 33
puts 66.7 == 66.7
puts 6 != 7
puts 33 < 34
puts 34 > 33

puts false || false
puts true || false
puts false || true
puts true || true

puts false && false 
puts true && false
puts false && true
puts true && true

puts 33 < 35 && 56 > 57
puts 5 <  4 && 99 < 88
puts (2 > 1) && (55 > 44)
```
**true** and **false** are also **reserved words** in Ruby. One cannot name a variable **true** or **false**.

[Ruby Truthy or Falsy](https://gist.github.com/jfarmer/2647362)

#### Strings

[Strings](http://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#string) are sequence of characters enclosed in a single quote or double quote.

#### Special Characters
A string may have one or more [special characters](http://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#string).  
`'\n'  # newline`  
`'\t'  # tab`

> Create a file demo/strings.rb and run it.

```ruby
# A sequence of characters enclosed in a single quote or double quote.

puts "simple string"
puts 'simple string with single quotes'


# Special Characters
puts "simple string\n\n\n"  # NOTE: must use double quotes.
puts 'simple string\n\n\n'  # NOTE: the single quotes will NOT process the special characters!!

puts "\tsimple string"   # Tab special char
puts "simple\s\s\s\sstring"  # Space special char

# Find specific characters by 'index' or 'offset' using 'braces'
puts  "simple string"[0]
puts  "simple string"[3]
puts  "simple string"[1..4]
puts "simple string"[-1]
puts "simple string"[5..-1]

# concatenation
puts "simple string" + "another string"
puts "simple string" << " another string"

# Equality
puts "simple string" == "simple string"
puts "simple string" == "simpleX string"
puts "simple string" != "simpleX string"

# String operations, aka methods.
puts "simple string".length
puts "simple string".upcase
puts "simple string".capitalize
puts "simple string".empty?
puts "simple string".include?('ple')
puts "simple string".include?('xyz')

```

## You Do 
* Look up the Ruby classes for the above data types, Fixnum, Float, Boolean and String.
* Learn a new method for each of these and explain it to your neighbor.
* Read about one of the to_<something> methods and explain it to another student.  

## Variables
Variables are pointers, i.e. references, to objects. The objects we're going to reference here are just Sting objects. But variables can reference any class of object.

#### What is a variable.

* A variable has an **[indentifier](http://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#ident)** that is the name used to refer to that variable.
* A variable's **value** is an Object that the identifier references.

```ruby
	# indentifier is address
	# value is the instance of a String that the 
	# identifier references.
	address = "33 Elm St"
```
* A variable **[indentifier](http://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#ident)** may only contain lowercase letters, numbers, and underscores.
* A variable **[indentifier](http://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#ident)** should make sense in the context of your program. Don't use variable names that are meaningless like *x, y or foo* in production code.
* A variable comes into existence when it's assigned a value.
* The **nil** object, which is also a keyword, can be used to indicate a variable has no value.
* Sometimes calling a method on a variable **ONLY** returns a new value. **It doesn't change the variable.**
	* This is the default/typical behavior of most methods.
* Sometimes calling a method on a variable **changes** the variable. 
	* This is usually indicated by using the **bang, `!`,** version of a method.

*(To be more precise, changing a variable is actually changing the object the variable is referencing)*	

> Create a file demo/variables.rb and run it.

```ruby
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
```

## You Do

Create a couple of variables, *all values will be an instance of a String.*

* Name of your first grade teacher.
* Name of your third grade teacher.
* Name of your fifth grade teacher, same person as your first grade teacher.
* Your first grade teacher got married and their last name changed. *Yep, probably need to change the value in-place.*
* Your third grade teacher had a child with the same name but they are using the suffix 'JR'.
* Name of some therimin instructor that you will have after you finally get around to signing up for instruction at the senior center. *Oh, maybe you don't have a name for them yet but you want a variable.*
* Go back to the above "What is a variable" and show someone examples of each item in the list.

## String Interpolation
Allow variable names and expressions to be interpreted as strings inside of other strings.

* uses the pound curly brace syntax  #{some_variable}

### Demo
* Create a `strings_interpolation.rb` in the demo dir.


## Lab
Create a file `vehicle_devaluate.rb` that will create variables for.  

* your first name.  
* your last name.  
* the make/model of your first car, or bike.  
* the year you got it.  
* How much you payed for it.  
* How much it would be worth in the year 2018, given it devaluates by by 3 percent each year.  
* Replace the spaces in the file with the variables you created above and output the string using puts.  

## Input with gets
The method gets will:
* Wait for user input in the console/terminal.
* Return the user input within the program when the user hits the return/enter key.

Open `years_until_retire.rb` and run it.

## Lab
Do the above lab __BUT__ prompt the user for the value of each variable.

## Conditionals

The Ruby Conditionals If and Case statement are best described with a code along.

### Demo
* Create `conditionals.rb`.

#### Lab 
* Create a `conditionals_lab.rb`.
* Ask the user for thier letter grade, A|B|C|D|F.
* Print out a message to the user depending on their grade. 
* Do this once using `if/elsif/else` statement.

## Loops
Will run the _body_ of the loop until either a condition is met OR until a break statement is executed in the body of the loop.

#### Demo
* Create a `loops.rb` file.  

#### Lab
* Create a `loops_lab.rb`.
* Create a variable for the number to guess.
* Create a variable that will hold number entered by the user.
* Create a loop that prompt the user for a number.
* Check the entered number against the number to guess.
* If the user has guessed the number, print out a success message.
* After getting the above to work. Limit the user to 3 guesses.



### Constants.

Contants are meant to be variables that are never modified. They are _immutable_.

_We'll see more how these are used as we go along_

### Examples
* `MAX_NUM_OF_STUDENTS = 25`
* `APPLICATION_NAME = "Ruby Calculator"`
* `class Calculator   # creates a CONSTANT named Calulator`
* `module Order   # creates a CONSTANT named Order`

## Reserved Words
These words are reserved in the Ruby language.  
`alias`, `and`, `BEGIN`, `begin`, `break`, `case`, `class`, `def`, `defined?`, `do`, `else`, `elsif`, `END`, `end`, `ensure`, `false`, `or`, `if`, `in`, `module`, `next`, `nil`, `not`, `or`, `redo`,  
`rescue`, `retry`, `return`, `self`, `super`, `then`, `true`, `undef`, `unless`, `until`, `when`, `while`, `yield`

Only use these reserved words as intended by the language.

## Ruby Styles 
See this for Ruby name conventions and styles.

[Ruby Style Guide](https://github.com/styleguide/ruby)


