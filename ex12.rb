# "require" is used to add the feature of other sources in script, 
# like Ruby Gems or something else
# in fact, "feature" is called "libraries" in Ruby
# sometimes people call it "modules"
require 'open-uri'

# what is ||? It's called a place holder, to represent the action we made
# the "f" inside || can change to any character or word you like,
# it's only a variable of action
# that is, f is substitute of open("url")
# so we use f.base_uri to execute .base_url on open("url")
# I'm not really sure about it so please correct me if any.
open("https://www.ruby-lang.org/zh_tw") do |f|
	f.each_line {|line| p line} # lots stuff
	puts f.base_uri 		# https://www.ruby-lang.org/zh_tw/
	puts f.content_type		# "text/html"
	puts f.charset			# blank
	puts f.content_encoding # blank
	puts f.last_modified	# 
end