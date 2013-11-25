# this one is like your scripts with argv
# but in Ruby function calls, we can't use ARGV, why? because it's used by main script
# ok, I know why Zed called it pointless to use *(asterisk)
# because * gather all the arguments which we define the next line(line 6)
# how pointless!! that's why we use puts_two_again and the name right inside ()
def puts_two(*args)
# notice that after definition, tab with 2 spaces and unpack at the first line
# oh! unpack! that's it! that's why we use splat!
# well, sometimes you just need to look the entire script to understand the real reason.
# so we unpack the *args to separate parameters and let the rest function to use.
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

# the "*"(asterisk) method is called "splat", to gather arguments
# we can simply do this
def puts_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end	

# this just take one argument
def puts_one(arg1)
	puts "arg1: #{arg1}"
end

# this one takes no arguments
def puts_none()
	puts "I got nothin'."
end 

# this is example from website of splat
def puts_two_extra(a, b, *c)
	puts "arg1: #{a}, arg2: #{b}, args: #{c}"
end

# when you input to run the program, open parenthesis is not required, but it' idiomatic
puts_two("Zed","Shaw","some","more")
puts_two_again("Zed", "Shaw")
puts_one("First!!")
puts_none()
puts_two_extra "Tim", "Feng", "Opps", "Wow"