module Ex25
# This function will break up words for us.
  def self.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

# Sorts the words.
  def self.sort_words(words)
    words.sort()
  end

# Prints the first word after popping it off.
  def self.puts_first_word(words)
    word = words.shift()
    puts word
  end

# Prints the last word after popping it off.
  def self.puts_last_word(words)
	word = words.pop()
    puts word
  end

# Takes in a full sentence and returns the sorted words.
  def self.sort_sentence(sentence)
	words = break_words(sentence)
    return sort_words(words) 
  end

# Puts the first and last words of the sentence.
  def self.puts_first_and_last(sentence)
    words = break_words(sentence)
    puts_first_word(words)
    puts_last_word(words)
  end

# Sorts the words then prints the first and last one.
  def self.puts_first_and_last_sorted(sentence)
    words = sort_sentence(sentence)
    puts_first_word(words)
    puts_last_word(words)
  end
end

puts "Let's practice everything."
puts "You'd need to know 'bout escapes with \\ that do \nnewlines and \t tabs."
# Why I can't use escape in single quote? only double-quote available for escape?
# always google it firsts! it is because single quote only support to sequences: \, and \\
# except these two escape sequences, everything else between single quote is treated 
# literally
puts 'I\'d love to \nstart'

poem = <<POEM
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.
POEM


puts "--------------"
puts poem
puts "--------------"

six = 10 - 2 + 3 - 5
puts "This should be six: %s" % six

def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: %d" % start_point
puts "We'd have %d jeans, %d jars, and %d crates." % [beans, jars, crates]

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %d beans, %d jars, and %d crabapples." % secret_formula(start_point)

sentence = "All good things come to those who wait."

include Ex25
words = Ex25.break_words(sentence)
sorted_words = Ex25.sort_words(words)

Ex25.puts_first_word(words)
Ex25.puts_last_word(words)
Ex25.puts_first_word(sorted_words)
Ex25.puts_last_word(sorted_words)
sorted_words = Ex25.sort_sentence(sentence)
print sorted_words
puts

Ex25.puts_first_and_last(sentence)

Ex25.puts_first_and_last_sorted(sentence)
