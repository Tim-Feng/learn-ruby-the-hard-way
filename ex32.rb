# array is just like a set of things, a bag full of items
# items could be numbers, strings, booleans, all in sequence.
# we take the bag and choose the item we need
# by the way, the first number of the sequence is zero

hairs = ['brown', 'blond', 'red']
eyes = ['brown', 'blue', 'green']
weights = [1, 2, 3, 4]

# more arrays

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through an array
# number does not really mean numbers, it's just variable here representing the item
# in array
# and we take items out, by "for" loop
for number in the_count
  puts "This is count #{number}"
  puts the_count
end

# same as above, but using a block instead
# remember || as a place holder? here we use |fruit| to represent each item of "fruits.each" 
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed arrays too
for i in change
  puts "I got #{i}"
end

# we can also build arrays, first start with an empty one
elements = []

# then use a range object to do 0 to 5 counts
# there are 2 dots .. this means "include" the last number which is 5
# if you use 3 dots ... this will only count from 1 to 4
for i in (0..5)
  puts "Adding #{i} to the list."
  # push is a function that arrays understand, to push element into arrays
  elements.push(i)
end

# now we can puts them out too
for i in elements
  puts "Element was: #{i}"
end