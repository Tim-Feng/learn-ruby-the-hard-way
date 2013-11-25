puts "Let's practice everything."
# simple escape sequence
puts "You\'d need to know \'bout escape with \\	that do \n newlines and \t tabs."

poem = <<MULTI_LINE_STRING

\tThe lovely world
with logic so firmly planted
cannot discern \n the need of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.

MULTI_LINE_STRING

puts "-------------"
puts poem
puts "-------------"

five = 10- 2 + 3 - 6
# simple string interpolation here
puts "This should be five: #{five}"

# we use def here to do some math and return the three calculated variables back to
# the original variable, secret_formula
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
# the three variables are not relative to the variables in def at all.
# the jelly_beans in def already return to the variable secret_formula as the first variable
# so when we use the secret_formula, we can name the three variables inside secret_formula
# with any name you want. Here we choose beans, jars and crates
beans, jars, crates = secret_formula(start_point)

puts "With the starting point of: #{start_point}"
# this is the most intuitive way to put variable into string
puts "We'd have #{beans} beans, #{jars} jars, #{crates} crates."

# below is another way to do the combination of string imbedded with variables
# to divide by 10, is to separate from above example
start_point = start_point / 10

puts "We could also do that this way:"
# % to replace variable in string, %s is to replace with string, %d is for digit/decimal number
# and in this way, we can collect all the variables into one variable which is defined already
puts "We'd have %s beans, %s jars, %s crates" % secret_formula(start_point)