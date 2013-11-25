# Function can return something
def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  a - b	
end

def multiply(a, b)
  puts "MULTIPLY #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "DIVIDE #{a} / #{b}"
  a / b
end

puts "Let's do some math with just functions!"

age = add(30, 1)
height = subtract(188, 10)
weight = multiply(24, 4)
iq = divide(900, 5)

puts " Age: #{age}, heigtht: #{height}, weight : #{weight}, IQ : #{iq}"

# a puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} Can you do it by hand?"