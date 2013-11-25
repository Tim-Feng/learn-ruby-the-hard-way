# initial condition to set i = 0 and an empty array called numbers
i = 0
numbers = []

# count i from 0, when i is less than 6, push i into the array
while i < 6
	puts "At the top i is #{i}"
	numbers.push(i)
# this will add i by 1, so i will increase 1 by 1, 1,2,3,4,5,6,7,8,....
# but this loop will stop at 5 as "while" restrict
	i = i + 1
	puts "Numbers now: #{numbers}"
	puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
	puts num
end