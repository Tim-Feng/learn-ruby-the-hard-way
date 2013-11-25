# -*- encoding: utf-8 -*-
# $: is a Ruby load path, it is adding the subfolder /lib of a folder which __FILE__
# resides to this array, so that other files from this gem can be required.
# File_expand_path Converts a pathname to an absolute pathname.
# __FILE__ is a reference to the current file name. 
# In the file foo.rb, __FILE__ would be interpreted as "foo.rb".
$:.push File.expand_path("../lib", __FILE__)
require "lexicon/version"

# check link in the post for double colon, ::
Gem::Specification.new do |s|
  # to give each method a value of Gem::Specification.new
  s.name        = "lexicon"
  s.version     = LEXICON::VERSION
  s.authors     = ["Tim Feng"]
  s.email       = ["fsjforever26@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "NAME"
  # remember the escape?
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

# so, what is gemspec? it's the spec of a gem.
# The gemspec defines what’s in the gem, who made it, and the version of the gem. 
# It’s also your interface to RubyGems.org.
# and of course, gemspec is also Ruby