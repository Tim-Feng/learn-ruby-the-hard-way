# first, get ARGV with the [0], the first parameter we run along with ruby ex20.rb 
input_file = ARGV[0]

# define to read a parameter and puts it(Reminder: we need to open a file before we read it!)
def print_all(f)
  puts f.read()
end
# define to rewind the file to the beginning 
def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

# define to puts which line and content of the script
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.readline()}"
end

# the script begin with opening the file we choose when running the script, which is 
# the variable that equal to ARGV[0]
current_file = File.open(input_file)

# puts the content of the file that we input, ARGV and open using the function we define
puts "First let's print the whole file:"
puts # a blank line

# we define this function at the beginning and use the file we open
# so the full functon is File.open(input_file).read
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

# because of the pointer(explain in below), we need to rewind to get back to the beginning of the file
# as for the f.seek(0, IO::SEEK_SET), please refer to http://www.ruby-doc.org/core-2.0.0/IO.html#method-i-seek
# the formal use is seek(amount, IO::SEEK_SET), to seek the absolute location given by amount.
# here we goes back to line zero
rewind(current_file)

# puts
puts "Let' print three lines:"

# define the first line as a variable value, this is for the increment of line_count
current_line = 1
print_a_line(current_line, current_file)

# after this line, current_line=2
current_line += 1
print_a_line(current_line, current_file)

# current_line is 2 now, so the current_line = 2 + 1
current_line += 1
print_a_line(current_line, current_file)

# Remember, once you see "=", check the right side first, the left side is result.

# as you can see, Ruby is running the script line by line and stack up, so the line_count
# here is increasing based on the previous value
# oh, so that's why we need rewind, just like the variable stack up, the file we open is 
# running to the end and stop at the end, just like a "pointer" that won't bounce back
# unless you command it to, also you can pinpoint a position in a file
# in the f.seek, 0 is the position we pinpoint
# so if you stop adding another 1 to current_line, the current_line will be the latest
# number we made it.
# the shorthand to do this is using +=, it says the variable = variable + 1
# thus the re-write will be
# current_line += 1

# if I am going to test, I have to rewind first or I will get error
rewind(current_file)

current_line += 1
# it is interesting to see that the current_line stop @ 4
# becasue the pointer is @ 3 in the beginning
print_a_line(current_line, current_file)
print_a_line(current_line, current_file)
print_a_line(current_line, current_file)
# What if we add another print_a_line?
# print_a_line(current_line, current_file)
# you definitely will get error.
# check the error code