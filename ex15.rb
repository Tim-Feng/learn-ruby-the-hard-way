# Argument variable with the 1st input parameter
filename = ARGV.first

# Simply use variable for ">"
prompt = ">"

# The variable "txt" now will be a command to open a file with "filename" in the 
# parenthesis
txt = File.open(filename)

# This line print the file name we input as a parameter along with running ex15.rb
puts "Here's your file: #{filename}"
# We call a function on txt, where we "open" a "file" 
# and give a command "read()" to read this "opened file"
# And yes, just like File.open but with no parameter, since there is nothing in ()
# Here "command" is also called "function" and "method"
# so here we ask Ruby to read with no parameters
puts txt.read()

# Print a line
puts "I'll also ask you to type it again:"
# Print symbol ">"
print prompt
# Another input by user to confirm the file name, STDIN is to prevent "gets" to 
# treat the first parameter as a file.
file_again = STDIN.gets.chomp()

# Open the file that user input again
txt_again = File.open(file_again)

# Print again
puts txt_again.read()

# remember to close file to release memory
txt.close()
txt_again.close()