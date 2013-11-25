# below is command line, start w/ $
# the -p is to create nested directory, but here is only 1
# I don't really understand why
$ mkdir -p projects
$ cd projects/
$ mkdir skeleton
$ cd skeleton
# this will create 3 directories bin, lib and test, also there is NAME under lib
$ mkdir bin lib lib/NAME test

# "touch" is to create an emptyfile 
$ touch lib/NAME.rb
$ touch lib/NAME/version.rb

=begin

1. Read about how to use all of the things you installed.
2. Read about the NAME.gemspec file and all it has to offer.
3. Make a project and start writing some code in the NAME.rb script.
4. Put a script in the bin directory that you can run. Read about how you can make 
	 a Ruby script that's runnable for your system.
5. Make sure the bin script you created is referenced in your NAME.gemspec so that 
   it gets installed.
6. Use your NAME.gemspec and gem build gem install to install your own library and 
	 make sure it works, then use gem uninstall to uninstall it.
7. Figure out how you can use Bundler to generate a skeleton directory automatically.

=end