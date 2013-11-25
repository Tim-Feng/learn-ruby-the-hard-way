# begin to define a method(or function) of variable: cheese_number and cracker_number
# notice: the variables here can be used in script again, as a brand new variable since 
# the variable in method and in script are distinguished.
def cheese_and_crackers(cheese_count, boxes_of_crackers)
# below is the puts of every variable in function
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket."
	puts # a blank line
end

# every time you input the variable with parameter(which is used in def), it will 
# automatically run the method once
# here is simply using numbers
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# Here we use variables in script
# notice: I use the same variable: cheese_count in method, it shows exactly that even the 
# same variable in method and in script is distinguished.
puts "OR, we can use variables from our script:"
cheese_count = 10
amount_of_crackers = 50
cheese_and_crackers(cheese_count, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(cheese_count +100, amount_of_crackers + 1000)
	