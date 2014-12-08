![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

## Objects
Object are really just "things". Lets list some objects.

* top song of 1992 (Jeremy).
* my songcloud playlist.
* my first car
* your second cousin jane.
* the book "Stranger in a Strange Land".
* the number 23.

Look around the room and find me about some objects.

In programming we represent objects, that may or may not, live in the
real world in a couple of different ways. 

* Physically in the computers memory in 1 and 0's. We really don't
  have to think about this in Ruby.

* Mainly we represent them in our head. We have a mental model of the objects in our ruby programs. 
* As a bunch of text that follows the "rules" of Ruby in a file.

Typically, we want the representation of an object in our head  to
reflected be as text in a Ruby file. 

## Classes
Objects, or things, can be classified. For example:

* top song of 1992 (Jeremy). Is "classified" as a __Song__.  
* my songcloud playlist. Is a __Playlist__.  
* my first car. Is a __Car__.  
* your second cousin jane. Is a __Person__.  
* the book "Stranger in a Strange Land". Is a __Book__.  
* the number 23. Is an Integer, aka __Fixnum__ in Ruby.

We "classify" objects in OOP by using a Class. So, Song, Playlist, Car,
Person, Book and Integer are all Classes. 

We'll get into how these are represented and created later in the
week.

### Object's may have data *attributes* and *behavior*, aka methods. 
* Song will have a name, duration, artist name data attributes and
will have a play method.  
	* The top song of 92 name is 'Jeremy', artist is 'Pearl Jam'.
* Car will have a make, model and year attributes. And will have a
refuel and reverse method.
	* My first car was a 69, Ford LTD a total _POS_.
* Person will have a name, age attributes and a talk method/behavior.
* Fixnum will have a add/subtract/mult/divide methods.
	* The integer 23 can be added, subtracted, etc.

## Data Types
Are represented by classes that are "built into" a language. 

We'll look at fixnum, floats, booleans, strings, symbols and ranges
today. We'll look at the array and hash data types tomorrow.

#### Fixnum and Floats

Some Fixnum objects, aka integers, are 10, 238, 1099, 87243956 and
87_243_956. 

Some Float objects are 1.2, 0.5, .5 12.10487, 12.5e1, 12.5e-1 and 0.67982e6.

Some methods, aka operator, for integers and floats are + addition, -
subtraction, * multiplication, \ division, % modulus.

These operators have precedence. When ruby sees mulitple operators,
(==, <, >, &&, ||, ...), it will follow a set of evalation rules.

[Operator Precedence](http://www.techotopia.com/index.php/Ruby_Operator_Precedence)
  
#### Booleans
There are only two boolean objects, 'true' and 'false'. Only 'false'
and nil are falsey. Every other object in Ruby is 'true'. We'll see more later.

[Ruby Truthy or Falsy](https://gist.github.com/jfarmer/2647362)

Some operators 'evaluate to' true or false. For example, Equal (==), Not Equal
(!=), Less than (<), More than (>), Less than or equal to (<=), More
than or equal to (>=), Negation (!), OR (||), AND (&&).

#### Strings
A sequence of characters enclosed in a single quote or double quote.

"simple string"
"another simple string"
'third simple string with single quotes'

#### Special Characters
A string may have one or more special characters.  
`'\n'  # newline`  
`'\t'  # tab`

## Lab 
* Look up the Ruby classes for the above data types, Fixnum, Float, Boolean and String.
* Learn a new method for each of these and explain it to your the student to your right.
* Read about one of the to_<something> methods and explain it to the student to your left.

## Variables
Variables are pointers to objects. These objects we're going to reference here are of simple data types strings and numbers. But variables can reference an object of any data type.

* A variable in Ruby is just a label that is a reference, or pointer to an object.
* A variable name may only contain lowercase letters, numbers, and underscores.
* A variable name should make sense in the context of your program. Don't use variable names that are meaningless like x, y, foo.

### Demo/Code Along
* Create a file variables.rb in the demo dir.

## String Interpolation
Allow variable names and expressions to be interpreted as strings inside of other strings.

* uses the pound curly brace syntax  #{some_variable}

### Demo
* Create a `strings_interpolation.rb` in the demo dir.


## Lab
Create a file `vehicle_devaluate.rb` that create variables for.
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


## Ruby Tools

### Interactive Ruby (IRB)
Interactive Ruby can be run on the command line.
`irb`

It will allow you to enter ruby expressions and run them. _Lets use Pry instead_

### Pry
[Pry](http://pryrepl.org/) is an alternative, more powerful, alternative to IRB.  

`gem install pry`  
`pry`  

### Demo
Lets start pry and play. Lets test out some of what we've learned above.
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


