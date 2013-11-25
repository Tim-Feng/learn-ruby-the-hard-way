# Argument variable with the 1st input parameter
user = ARGV.first
# this variable is not in the exercise, it's for reminding that ARGV calls from 0
reminder = ARGV[1]

# this is just to unite the symbol so that you can change one code for all script
prompt = '>'

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt

# STDIN means STanDard INput, there is also STDOUT, standard out and STDERR,standard error

# OK, first thing, here's a change-up. gets.chomp() is represented as STDIN.gets.chomp(). 
# Why? Because ARGV is being used. 
# the default gets method will look in ARGV and try to read from the first variable as a 
# file but not data. 
# getting input straight from the keyboard (user input) is referred to in computer 
# parlance as STDIN. 
# So to read the users input as data, when ARGV is used, STDIN.gets is used.
# after all, STDIN.gets.chomp() will receive user' input as data but not a file and print 
# without a new line, or to say, remove the white space
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
# here I didn't use .chomp and you will see the script include the return we press and 
# start a new line
lives = STDIN.gets

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
MESSAGE

# print here will include the return we press in the STDIN.gets so there will be a new 
# line for the next puts
print lives
puts lives