# This exercise is to get response from user
# it seems gets.chomp() is getting a string
# and if "gets" without "chomp", ruby will automatically add a new line

# and the reason to add a new line is because without .chomp, when you press return key 
# it will include the return as a part of the value held in the variable. When you print 
# the variable it will also print the return, and make a new line.

# so .chomp is basically removing white space
print "How old are you?"
age = gets.chomp()
print "How tall are you?"
height = gets.chomp()
print "How much do you weight?"
weight = gets.chomp()

# again, it's the curly brace
puts "So, you're #{age}, years old, #{height} tall and #{weight} heavy."
