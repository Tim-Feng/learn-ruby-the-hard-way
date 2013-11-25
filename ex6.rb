# " is double quote, ' is single quote
# [] is bracket
# , is comma 
# This line includes a string interpolation #{10}, a number inside a string.
# "{" is called "curly brace"

# #{} is string interpolation, to put variable inside a string
# everything inside "#{}" is treat like ruby, means to be run, calculated like ruby
x = "There are #{5+5} types of people."
#This line name the variable:binary to a string "binary"
binary = "binary"
#This line name the variable: do_not to a string "don't"
do_not = "don't"
#This line is a variable with 2 string interpolations: #{binary} and #{do_not}
y = "Those who know #{binary} and those who #{do_not}."
puts x
puts y

#This line use a string interpolation
puts "I said: #{x}."
#This line use single quote to show the #{y} as a string
puts "I also said: '#{y}'."

#The variable is false
hilarious = false
#This line show false as the result of a variable
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of.."
e = "a string with a right side."

puts w + e