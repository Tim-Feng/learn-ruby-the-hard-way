name = 'Zed A. Shaw'
age = 35	# no joke
height = 74*2.54  # inches
weight = 180*0.45359 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

# %s, "s" for "string"
# the % behind is the variable(name in this case) to replace %s inside the string
puts "Let's talk about %s." % name

# %f, "f" for "float"
# the % behind is the variable(height in this case) to replace %f inside the float
puts "He's %f cm tall." % height

# %d, "d" for "decimal number"
# the % behind is the variable(weight in this case) to replace %d inside the decimal
puts "He's %d kg heavy." % weight
puts "Actually that' not too heavy."

# multiple format string
puts "He's got %s eyes and %s hair." % [eyes, hair]

puts "His teeth are usually $s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
# we can have some math inside the format string
puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]

# There is more "sprintf", FormatString