# Implicit Inheritance
# there is a def in class Parent
class Parent

    def implicit()
        puts "PARENT implicit()"
    end
end

# class Child inherit from class Parent and no any def
class Child < Parent
end    
# so when we create object of each class
dad = Parent.new()
son = Child.new()
# we will have the same result "PARENT implicit()"
dad.implicit() 
# result
# PARENT implicit()
son.implicit() 
# result
# PARENT implicit()

# Override Explicitly
# class Parent have a def override()
class Parent

    def override()
        puts "PARENT override()"
    end
end

# class Child inherit class Parent but have the eaxt same def override() but differnet inside
class Child < Parent
    
    def override()
        puts "CHILD override()"
    end
end

# so when we create object of each class
dad = Parent.new()
son = Child.new()

# class Child will have his own result even he inherits from class PARENT
dad.override() 
# result:
# PARENT override()
son.override() 
# result:
# CHILD override()

# Alter Before Or After
class Parent

    def altered()
        puts "PARENT altered()"
    end

end

class Child < Parent
# here we override as above example but add a line called "super()"
    def altered()
        puts "CHILD, BEFORE PARENT altered()"
        # super() is to call on the class Parent 
        super()
        puts "CHILD, AFTER PARENT altered()"
    end

end

dad = Parent.new()
son = Child.new()

dad.altered() 
# result:
# PARENT altered()
son.altered()
# result:
# CHILD, BEFORE PARENT altered()
# PARENT altered()
# CHILD, AFTER PARENT altered() 

# All Three Combined
class Parent

    def override()
        puts "PARENT override()"
    end

    def implicit()
        puts "PARENT implicit()"
    end

    def altered()
        puts "PARENT altered()"
    end
end

class Child < Parent
    # this override() wins!  
    def override()
        puts "CHILD override()"
    end
    # this will add class Parent @ super()
    def altered()
        puts "CHILD, BEFORE PARENT altered()"
        super()
        puts "CHILD, AFTER PARENT altered()"
    end
end

dad = Parent.new()
son = Child.new()

dad.implicit() 
# result:
# PARENT implicit()
son.implicit() 
# result:
# PARENT implicit()

dad.override() 
# result
# PARENT override()
son.override() 
# result
# CHILD override()

dad.altered() 
# result
# PARENT altered()
son.altered()
# result
# CHILD, BEFORE PARENT altered()
# PARENT altered()
# CHILD, AFTER PARENT altered() 

# Using super() With initialize
# super() in def initialze can let you do things in Child then complete
# the initialization in Parent
class Child < Parent
    def initialize(self, stuff):
        self.stuff = stuff
        super()
    end
end

# Composition
# no Parent or Child
class Other

    def override()
        puts "OTHER override()"
    end

    def implicit()
        puts "OTHER implicit()"
    end

    def altered()
        puts "OTHER altered()"
    end
end

class Child

    def initialize()
        @other = Other.new()
    end

    def implicit()
        @other.implicit()
    end
    
    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "CHILD, BEFORE OTHER altered()"
        @other.altered()
        puts "CHILD, AFTER OTHER altered()"
    end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

# result
# OTHER implicit()
# CHILD override()
# CHILD, BEFORE OTHER altered()
# OTHER altered()
# CHILD, AFTER OTHER altered()

# Composition
# Basically, it's 2 seperate class, we call it when we need it
# nothing special, I think that's why Zed want us to use Composition
class Other

    def override()
        puts "OTHER override()"
    end

    def implicit()
        puts "OTHER implicit()"
    end

    def altered()
        puts "OTHER altered()"
    end
end

class Child

    def initialize()
        @other = Other.new()
    end

    def implicit()
        @other.implicit()
    end
    
    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "CHILD, BEFORE OTHER altered()"
        @other.altered()
        puts "CHILD, AFTER OTHER altered()"
    end
end

son = Child.new()

son.implicit()
# OTHER implicit()
son.override()
# CHILD override()
son.altered()
# CHILD, BEFORE OTHER altered()
# OTHER altered()
# CHILD, AFTER OTHER altered()

# change "Other" from class to module.
# to use class or module depends on if you need to maintain state in each function call in Other.
# if each function can stand on its own, and they're mostly utilities then use a module. 
# if however the set of functions make up a cohesive "thing" that keeps state then use a class.
module Other

    def Other.override()
        puts "OTHER override()"
    end

    def Other.implicit()
        puts "OTHER implicit()"
    end

    def Other.altered()
        puts "OTHER altered()"
    end
end

class Child

    def implicit()
        Other.implicit()
    end
    
    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "CHILD, BEFORE OTHER altered()"
        Other.altered()
        puts "CHILD, AFTER OTHER altered()"
    end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

# Go check Ruby Styleguide on GitHub!!
