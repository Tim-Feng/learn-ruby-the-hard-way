# Below are the commands you can give to files
# close -- Close the file. Like File->Save in your editor
# readline -- Read just one line of a text file
# truncate -- Empties the file, watch out if you care about the file
# write(stuff) -- Wites stuff to the file

# Again, the parameter go along when running this program
filename = ARGV.first
# This is how you get the name of the script! print script then you know why.
script = $0

# Simple instruction
puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
# This enter is only to warn people for erasing file
puts "If you do want that, hit RETURN."
print "?"
# Here the gets only to add one more step for user to wait and think
STDIN.gets

# below are some test code

# It's a wrong code here! We didn't open the file yet, so the "size" method will output
# the length of the file, "ex15_sample.txt", 15 characters.
puts "The size of the file is:", filename.size 

# So we open the file
target = File.open(filename)

# Then we have the correct size
puts "The size of the opened file is:", target.size

puts "Opening the file..."
# Open the file in "write" mode, default is read mode.
target_write = File.open(filename, 'w')

# So now we have three stage of this file:
# 1. ex15.sample.txt
# 2. opened ex15_sample.txt
# 3. writable ex15_sample.txt
# What about the size of each stage?

puts "The size of the file is:", filename.size
puts "The size of the opened file is:", target.size
puts "The size of the writable file is:", target_write.size

# ok, it is very strange.
# once I open the file in write mode, the file size become zero forever!!
# the content in ex15_sample.txt is all gone!!
# I did not do anything to that file yet!!
# so I google it, and find out why.
# http://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options
# you can see the description in write mode, that write mode will truncate existing file
# that is why the file size become zero after I open it in write mode

puts "Truncating the file. Goodbye!"
target_write.truncate(0)
puts "The size of the file is:", target_write.size
puts "Now I'm going to ask you for three lines."

# Get input from user for new line 1~3
print "line 1; "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

# Below are the general way to re-write:
## To write "line 1" in test.txt
#target.write(line1)
## To start a new line to write "line2" in test.txt
#target.write("\n")
#target.write(line2)
#target.write("\n")
#target.write(line3)
#target.write("\n")

# There are several simple ways to do this
#target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")
# or
target_write.write("%s\n%s\n%s\n"%[line1, line2, line3])
# so we keep writing line1, line2, line3 and separate by \n
puts "And finally, we close it."
target_write.close()

# what if you try to truncate the target_read? Try it!