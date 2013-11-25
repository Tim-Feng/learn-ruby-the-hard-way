# to call 2 arguments when input
from_file, to_file = ARGV
# this is the name of this script
script = $0

# instruction
puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
input = File.open(from_file)
indata = input.read()
# indata = File.open(from_file).read()

# see the length? it has a alias called "size", which we just use in ex16
puts "The input file is #{indata.length} bytes long"

# .exist? will return boolean true or false
puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

# name a variable to "open" the "file" "to_file" to "write" mode 
output = File.open(to_file, 'w')
# to wirte the variable with another
output.write(indata)

# The one-line solution is
# File.open(to_file, 'w').write(File.open(from_file).read())
# Just try to replace every variable in the last line

puts "Alright, all done."

output.close()
input.close()

# The reason to do output.close is that Ruby does not automatically dispose of any local 
# variables once a block finish execution. The garbage collector only runs when there's 
# not enough memory or the interpreter is exiting unless called directly, therefore, if 
# you're processing a lot of files in a loop you will have to close each one or you'll 
# run out of file descriptors.

# for extra credit of require:
# 1. require and load are used on documents, like .rb
# 2. include is used to include a part of a .document, like a part in .rb
# 3. load is just like require, but require can only be used once, if require twice, it
#    will be ignored
# 4. load can be used several times
# 5. to include something, you need to require a document(.rb) and then include
# 6. example: you want to require a abc.rb and include a Ma, you need to:
# !require abc.rb
# !include Ma