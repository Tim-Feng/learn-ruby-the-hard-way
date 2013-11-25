# to name a variable with 4 parameters
formatter = "%s %s %s %s"

# to indicate the parameter of variable, use "%" as beginning 
# and "[", "]" to braket string or numbers or boleans or variables
puts formatter % [1, 2, 3, 4]
puts formatter % ["one", "two", "three", "four"]
puts formatter % [true, false, false, true]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
	"I had this thing.",
	"That you could type up right.",
	"But it didn't sing.",
	"So I said goodnight."
]