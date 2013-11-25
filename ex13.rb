# this exercise is try to tell you another way to pass variables to a script
# in fact, .rb files are script
# when type "ruby ex13.rb", you "ruby" the "ex13.rb"

# you name a variable in argument by ARGV and those variables are argument variables
# Those argument variables come along when you run "ruby ex13.rb"
# It goes to "ruby ex13.rb a b c", "ruby ex13.rb 1 2 3"
# and once you define the q'ty of ARGV, let's say, 3, Ruby will take the first 3
# argument you entered. So even if you input "ruby ex13.rb 1 2 3 4", the 4 will not
# be used anywhere.
first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"