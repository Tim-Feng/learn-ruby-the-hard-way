# just a sign
def prompt()
  print "> "
end

# it's a room
def gold_room()
  puts "This room is full of gold.  How much do you take?"
# ask for input
  prompt; next_move = gets.chomp 
# If you check all the program, you will find here is to judge if user input a number
# but the example code is wrong, since it can only judge user's input including
# 0 or 1, that' totally not enough.
# so we need a method to judge if user's input is integer.
# Shaw indicate to check to_i, so I googled "ruby to_i" and found that if input.to_i == 0,
# that means the input is not a integer, that's it!
# so I modify as below:
# if next_move.to_i != 0 
  if next_move.include? "0" or next_move.include? "1"
    how_much = next_move.to_i()
  else
# I use != 0, so those input.to_i == 0 will go here and puts below.
    dead("Man, learn to type a number.")
  end
# simple judgement of the integer
  if how_much < 50
    puts "Nice, you're not greedy, you win!"
# you finish the game and Process exit.
    Process.exit(0)
  else
    dead("You greedy bastard!")
  end
end

# It's a room, you enter here when you choose go "left" in the start
def bear_room()
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
# you can think of that the bear will not move if you do nothing.
  bear_moved = false

  while true
    prompt; next_move = gets.chomp
# if you touch the honey, you die
    if next_move == "take honey"
      dead("The bear looks at you then slaps your face off.")
# if you taunt bear, the bear moved so bear_moved = true
    elsif next_move == "taunt bear" and not bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
# if you taunt the bear when the bear_moved is true, you die.
# because you taunt the bear twice, you idiot!!!
    elsif next_move == "taunt bear" and bear_moved
      dead("The bear gets pissed off and chews your leg off.")
# so if we open door when bear_moved is true, we go to the gold room!
    elsif next_move == "open door" and bear_moved
      gold_room()
    else
      puts "I got no idea what that means."
    end
  end
end

# It's a room, you enter here when you choose go "right" in the start
def cthulhu_room()
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  prompt; next_move = gets.chomp
# if you flee, you have second chance and go back to the start(just like Coldplay's song)
  if next_move.include? "flee"
    start()
# you died.
  elsif next_move.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room()
  end
end

# how you die
def dead(why)
  puts "#{why}  Good job!"
  Process.exit(0)
end

# it's the beginning of this game, look at bottom, there is a start() 
def start()
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  prompt; next_move = gets.chomp
# It's your first move to decide going bear_room or cthuhu_room
  if next_move == "left"
    bear_room()
  elsif next_move == "right"
    cthulhu_room()
# you die.
  else
    dead("You stumble around the room until you starve.")
  end
end

start()