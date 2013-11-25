# this is Hash
mystuff = {'apple' => "I AM APPLES!"} 
# to get "I AM APPLES", we need to get apple from Hash
puts mystuff['apple'] 
# this is how we get apple from Hash

# let's assume a module called mystuff.rb, and there is a function "apple" in this module
module MyStuff
    def MyStuff.apple()
        puts "I AM APPLES!"
    end
end

# the function apple belongs to the module MyStuff, to use apple,
# first we require mystuff.rb and then got the module MyStuff
# MyStuff.apple() is the way to call it out
# NOTICE! It's diferent with the lecture, because Ruby 1.9 need to add the path
require './mystuff'

MyStuff.apple() # get apple(the function) from the module

# same thing, in this case we add another variable belongs to MyStuff
module MyStuff
    def MyStuff.apple()
        puts "I AM APPLES!"
    end

    # this is just a variable
    TANGERINE = "Living reflection of a dream"
end
# and we can call this variable by below
require './mystuff'

MyStuff.apple()
puts MyStuff::TANGERINE

# let's do some comparison:
mystuff['apple'] # get apple from hash
MyStuff.apple() # get apple from the module
MyStuff::TANGERINE # same thing, it's just a variable

# So you can see the difference, when we need to call a function(method)
# we use .(dot), and to call a variable, we use ::(double-colon)
# compare to Hash, mystuff['apple'], apple is the "key", [key] is the syntax
# in module, .key is the syntax

# What is class? A class is a way to take a grouping of functions and data 
# and place them inside a container so you can access them with the '.' (dot) operator.
class MyStuff

    def initialize()
        @tangerine = "And now a thousand years between"
    end

    attr_reader :tangerine

    def apple()
        puts "I AM CLASSY APPLES!"
    end
end

# There are 2 things we didn't see before, initialize() and @tangerine

# Difference between Class and Module? Class can be used at the same time but
# Module can only be used(require) for the entire program

# so we use "require" for Module, what about class? How do we use class?
# A class is like an ideal model or blueprint, you can't directly use class, you need to
# create a copy of a class by Class.new()

thing = MyStuff.new()
thing.apple()
puts thing.TANGERINE

# and with .new(), that's where the def "initialize()" begin to work.
# initialize() does 1 thing: create a variable "self" for us to use

# let's compare again more detail
# hash style
mystuff['apples']

# module style
mystuff.apples()
# there is a typo in Zed's book, he used mystuff.tangerine
puts mystuff::TANGERINE

# class style
thing = MyStuff.new()
thing.apples()
puts thing.TANGERINE

# so the real example begins here...lol
class Song

    def initialize(lyrics)
        @lyrics = lyrics
    end

    def sing_me_a_song()
        for line in @lyrics
            puts line
        end
    end
end

happy_bday = Song.new(["Happy birthday to you",
                   "I don't want to get sued",
                   "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
                        "With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()
