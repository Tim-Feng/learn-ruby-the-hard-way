=begin

Keywords

alias - associate a method and make it synonymous with another method.

and - flow control operator with low precedence that means do x and do
y. Not to be confused with &&, which is a boolean operator with high
precedence.

BEGIN - Designates, via code block, code to be executed
unconditionally before sequential execution of the program begins.
Sometimes used to simulate forward references to methods (comes from
http://ruby-doc.org/docs/keywords/1.9/Object.html#method-i-BEGIN,and
I'm only slightly sure of what it means).

begin - Together with end, delimits what is commonly called a “begin”
block (to distinguish it from the Proc type of code block).

break - terminates execution of a code block and jumps out of it.
Think of a case statement, as that's where I'm most familiar with
seeing it being used.

case - consider it like a stack of related if statements. It's a more
simple system to

class - defines a object and its methods that can be used in ruby

def - used to define a function

defined? - determins if a method refers to something directly (a
string, a  number, etc.)

do - execute everything that follows as though it were part of the
same block

else - do this if all other conditional statements are not met

elsif - doo this if the first conditional statement is not met

END - defines a section of code that can be run at the end of a code
block

end - end of a block of code

ensure - usually run with a rescue statement, even if the rescue
statement doesn't get run, the ensure statement will run

false - a boolean value, it's sued to evalute whether or not a
statement will run (used often with while and unless)

for - keyword to define the start of a for loop

if - keyword to define the first conditional statement

in - run the steps in the for loop that match this condition

module - synonymous with function, it's a scope where local variables
are not aware of other values

next - an iteration step, modifies the value of a variable even if no
ction is performed

nil - no value

not - is not this value

or - do if an example is condition 1 or condition2

redo - re-executes a code block without regard to conditions of
varibles or state of the program

rescue - error handling section of code.

retry - associated with rescue, has the program try the section of
code where the rescue statement resides again.

return - value sent out from a function to the main routine

self - the area of code being run at any given time

super - looks for anc can call all factors associated with a class or
method

then - makes posible a conditional statement on a single line (i.e.
without having to use a semicolon)

true - do this if the value referenced is true

undef - dereference a method or class for use in a given scope

unless - the opposite of if

until - perform an operation up to the point a condition becomes true

when - options associated with a case statement

while - run forever as long as a condition is not met

yield - Called from inside a method body, yields control to the code
block (if any) supplied as part of the method call. If no code block
has been supplied, calling yield raises an exception.


Data Types

For data types, write out what makes up each one. For example, with
strings write out how you create a string. For numbers write out a few
numbers.

true - logical data type - while true (do something and keep doing it
until expression evaluates to false)

false - logical data type - while false (do something and keep doing
it until expression evaluates to false)

nil - has no value or a value of nil (is empty) a = nil

constants - data type that starts with a capital letter. If value is
changed ruby will warn you that you have changed a constant. Pi = 3.14

strings - a collection of characters a = "hello there"

numbers - any digital value  a = 1, b = 2.4

ranges - a grouping of numbers  (1..10) or (1...10)

arrays - a special container that can contain many vliues under the
same variable name value["one, "two", three", "four"]

hashes - similar to an aray, but with a way to associate values
Hash["a", 100, "b", 200]  #=> {"a"=>100, "b"=>200}

String Escapes Sequences

For string escape sequences, use them in strings to make sure they do
what you think they do.

\\ - escapes a back slash so that it can be used in a string and not
\\ - treated as a special character

\' - escapes a single quote so that it can be used in a string and not
\' - treated as a special character


\" - escapes a double quote so that it can be used in a string and not
\" - treated as a special character


\a - actually creates a bell sound alert in a string


\b - actually shows a backspace when printing a string


\f - representa a form feed (not sure where I would use that, but OK)


\n - prints a literal new line

\r - prints a literal carraige return

\t - prints a tab character

\v - vertical tab (not sure where I would use that, but OK)

Operators

Some of these may be unfamiliar to you, but look them up anyway. Find
out what they do, and if you still can't figure it out, save it for
later.

:: - call a constant value (similar to how a method is called with a
:: - '.')

[] - element set (used with arrays)

** - exponent arithmetic operator (2**5 == 32 evaluates to true)

-(unary) - ???


+(unary) - ???

! - logical NOT operator ( as in if a&&b evaluates to true, !(a&&b) is
! - false)


~ - Binary Ones Complement Operator (or "bit flipper" which admittedly
~ - I have no idea where or how I would use)


* - multiplication arithmetic operator (4 * 2 == 8 evaluates to true)


/ - division arithmetic operator (4 / 2 == 2 evaluates to true)


% - modulus arithmetic operator (returns a remainder, such as 5 % 2 ==
% - 1 evaluates to true)


+ - addition arithmetic operator (as in 1+1 == 2 evaluates to true)


- - subtraction arithmetic operator (as in 3-1 == 2 evaluates to true)


<< - Binary Left Shift Operator


>> - Biary Right Shift Operator


& - binary AND operator

| - binary OR operator

> - greater than comparison operator (3 > 2 evaluates to true)

>= - greater than or equal to comparison operator (3 >= 2 evaluates to
>= - true, 2 >= 2 also evaluates to true)

< - less than comparison operator (2 < 3 evaluates to true)

<= - less than or equal to comparison operator (2 <= 3 evaluates to
<= - true, 2 <= 2 also evaluates to true)

<=> - combined comparison operator (returns different values, 2 <=> 3
returns 1, 2 <=> 2, returns 0, 3 <=> 2 returns -1) ==  - equals
comparison operator, as in 12 == 12 evaluates to true


=== - special equals option when used within a case statement
=== - ((1...10) === 5 evaluates to true)

!= - not equal (2 !=3 evaluates to true)


=~ - equal or bit flipped ???


!~ - not flipped???

&& - this is an "and" operator" as in "evaluate this and evaluate
&& - that"


|| - this is an or operator, as in "evaluate this or evaluate that"

.. range value including end points. 1..10 includes 1 and 10


... range value excluding end points. 1...10 does not include 1 and
... 10, but does include 2 through 9.
