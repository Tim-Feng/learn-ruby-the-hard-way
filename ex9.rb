# Here's some new strange stuff, remember type it exactly.
# ok, it's the escape, which means to escape from "", the double quote.
# for example, "\n" here is a command to start a new line
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# below is to put string first and variable after using a camma

# soft remind, if we want to put a variable inside a "", 
# use %s or %d inside the "" and follow by % and then the variable
# just like ex5: puts " I want %s million dollar" % number 
# and number is variable defined in the beginning
puts "Here are the days: ", days
puts "Here are the months: ", months

# note here the PARAGRAPH is not a command but just a variable
# You can see that I remove the first "R" and still work
puts <<ARAGRAPH
There's something going on here.
With the PARAGRAPH thing
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
ARAGRAPH