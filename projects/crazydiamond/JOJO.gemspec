# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "JOJO/version"

Gem::Specification.new do |s|
  s.name        = "JOJO"
  s.version     = JOJO::VERSION
  s.authors     = ["Tim Feng"]
  s.email       = ["fsjforever26@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "JOJO"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end