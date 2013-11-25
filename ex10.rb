# here to explain how to escape a double quote inside a string using a "\", back-slash
puts "I am 6'2\" \ntall." # escape double-quote inside string
puts 'I am 6\'2" tall.' # escape single-quote inside string
# notice, only single quote and double quote can be escaped from single quote

tabby_cat = "\tI'm tabbed in."
persian_cat = "I\'m split\non a \tline."
backslash_cat = "I'm \\ a \\ cat."

# even between <<MY_HEREDOC and MY_HEREDOC, it works
fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishes
\t* Catnip
\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

