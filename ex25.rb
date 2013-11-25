module Ex25
# here "stuff" is a argument, when we run IRB and call the function break_words(), it
# could be other variable instead of "stuff", we use "sentence" in this practice
  def self.break_words(stuff)
    # This function will break up words for us, break up by the symbol between single quotes ''
    # here is ' ', the space 
    words = stuff.split(' ')
    words
  end

  def self.sort_words(words)
    #Sorts the words
    words.sort()
  end
  
  def self.print_first_word(words)
  	# Print the first word and shifts the others down by one.
  	word = words.shift()
  	puts word
  end
  
  def self.print_last_word(words)
  	# Print the last word after popping it off the end.
  	word = words.pop()
  	puts word
  end
  
  def self.sort_sentence(sentence)
  	#Takes in a full sentence and returns the sorted words.
  	words = break_words(sentence)
  	sort_words(words)
  end
  
  def self.print_first_and_last(sentence)
    # Print the first and last words of the sentence.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end
  
  def self.print_first_and_last_sorted(sentence)
    # Sorts the words then print the first and last one.
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end    
end
# to run this script directly, no response means your script is correctly "written 
# syntaxically speaking"

=begin
$ irb
# here is the path we require script, ./PATH
# if you put ex25.rb under sub-folder where you run irb, make sure you insert the right
# path
irb(main):001:0> require './ex25'
=> true
# input the sentence, of course, it's a string.
irb(main):002:0> sentence = "All good things come to those who wait."
# system will automatically show what you insert.
=> "All good things come to those who wait."
# Now we use the method in Ex25(the name of module) by usin dot "." between Ex25(the module)
# and break_words(sentence)[the method]
irb(main):003:0> words = Ex25.break_words(sentence)
# there is a "words" in line 5, that will show the result in [...]
# if you add "puts" in front of words, that will make an error, it might because using
# "puts" will make line 10 have nothing to "sort"
=> ["All", "good", "things", "come", "to", "those", "who", "wait."]
irb(main):004:0> sorted_words = Ex25.sort_words(words)
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
# when we "print_first_word", we take the first word away from the variable "words"
# so there is only left ["come", "good", "things", "those", "to", "wait.", "who"]
irb(main):005:0> Ex25.print_first_word(words)
All
=> nil
# and when we "print_last_word", we take away the last word from the rest of "words"
# so there is only left ["come", "good", "things", "those", "to", "wait."]
irb(main):006:0> Ex25.print_last_word(words)
wait.
=> nil
# typo on purpose
irb(main):007:0> Ex25.wrods
NoMethodError: undefined method `wrods' for Ex25:Module
        from (irb):6
# to show what's left in the variable "words"
irb(main):008:0> words
=> ["good", "things", "come", "to", "those", "who"]
# again, we print and take away the first word from the variable "sorted_words"
irb(main):009:0> Ex25.print_first_word(sorted_words)
All
=> nil
# take away the last word from the variable "sorted_words"
irb(main):010:0> Ex25.print_last_word(sorted_words)
who
=> nil
# to show what's left n the variable "sorted_words"
irb(main):011:0> sorted_words
=> ["come", "good", "things", "those", "to", "wait."]
# for the inserted string, we can sort it but print as above will not take away any part
# of the string
irb(main):012:0> Ex25.sort_sentence(sentence)
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):013:0> Ex25.print_first_and_last(sentence)
All
wait.
=> nil
irb(main):014:0> Ex25.print_first_and_last_sorted(sentence)
All
who
=> nil
irb(main):015:0> ^D
=end