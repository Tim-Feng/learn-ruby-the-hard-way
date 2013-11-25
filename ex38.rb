# naming a variable of 6 strings
ten_things = "Apples Oranges Crows Telephone Light Sugar"

# but there should be 10 strings as the ten_things hints
puts "Wait there's not 10 things in that list, let's fix that."

# so we first split ten_things to another variable "stuff"
stuff = ten_things.split(' ')
# everything get .split will be an array, check this out
print stuff
# another variable of strings.
# %w is a short cut to represent an array
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)
# I add this test line to show you "more_stuff" is an array
# and if you use "puts" here, the array will be spread, try it!
print more_stuff

# my test code to show that .length work on an array shows how many
# items/elements is in the array
puts stuff.length
#when there are less than 10 items/elements in the array "stuff", execute below
while stuff.length != 10
	# .pop is to take out the last one items/elements from the array "more_stuff"
	# so we have "Boy" here
	# notice I use "take out", that means "Boy" will no longer in the array
  next_one = more_stuff.pop()
  # shows what element we take out
  puts "Adding: #{next_one}"
  # .push to push "next_one" in the array "staff"
  stuff.push(next_one)
  # so we have the stuff.length increased by 1 
  puts "There's #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
# the index of the first element of an array is 0, so -1 will be the last element
puts stuff[-1]
# .pop takes out the last element 
puts stuff.pop() 
# of course, we use .pop so the last element is gone
puts stuff 
# we use .split(seperator) to convert a string to an array seperated by split.(seperator)
# also we can use .join(seperator) to convert each element of an array to a string
# here the seperator is a space
puts stuff.join(' ') 
# values_at(3,5) pick the 4th and 5th element to join by a #
puts stuff.values_at(3,5).join('#') # super stellar!