# get feedback and split it
stuff = gets.chomp()
# remember? .split will result in array
words = stuff.split()

print words

=begin
Direction words: north, south, east, west, down, up, left, right, back.
Verbs: go, stop, kill, eat.
Stop words: the, in, of, from, at, it
Nouns: door, bear, princess, cabinet.
Numbers: any string of 0 through 9 characters.
=end

# next step, we check the splited words belong to which group
Pair = Struct.new(:token, :word)
first_word = Pair.new("direction", "north")
second_word = Pair.new("verb", "go")
sentence = [first_word, second_word]

# my first try but seems stupid...
direction_north = Pair.new("direction", "north")
direction_south = Pair.new("direction", "south")
direction_east = Pair.new("direction", "east")
direction_west = Pair.new("direction", "west")
direction_down = Pair.new("direction", "down")
direction_up = Pair.new("direction", "up")
direction_left = Pair.new("direction", "left")
direction_right = Pair.new("direction", "right")
direction_back = Pair.new("direction", "back")

verb_go = Pair.new("verb", "go")
verb_stop = Pair.new("verb", "stop")
verb_kill = Pair.new("verb", "kill")
verb_eat = Pair.new("verb", "eat")

stop_the = Pair.new("stop", "the")
stop_in = Pair.new("stop", "in")
stop_of = Pair.new("stop", "of")
stop_from = Pair.new("stop", "from")
stop_at = Pair.new("stop", "at")
stop_it = Pair.new("stop", "it")

noun_door = Pair.new("noun", "door")
noun_bear = Pair.new("noun", "bear")
noun_princess = Pair.new("noun", "princess")
noun_cabinet = Pair.new("noun", "cabinet")

number_one = Pair.new("number", "one")
number_two = Pair.new("number", "two")
number_three = Pair.new("number", "three")
number_four = Pair.new("number", "four")
number_five = Pair.new("number", "five")
number_six = Pair.new("number", "six")
number_seven = Pair.new("number", "seven")
number_eight = Pair.new("number", "eight")
number_nine = Pair.new("number", "nine")

# see the hint:
=begin
Design Hints:
Focus on getting one test working at a time. 
Keep this simple and just put all the words in your lexicon
in lists that are in your lexicon.rb file. 
Do not modify the input list of words, 
but instead make your own new list with your lexicon pairs in it. 
Also, use the include? method with these lexicon arrays 
to check if a word is in the lexicon.
=end

# so, according to above, there should be a lexicon.rb and maybe
# I can put these as an array?