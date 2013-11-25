## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal

    def initialize(name)
        ## Dog has-a name
        @name = name
    end
end

## Cat is-a Animal
class Cat < Animal

    def initialize(name)
        ## Cat has-a name
        @name = name
    end
end

## Person is-a class
class Person

    def initialize(name)
        ## Person has-a name
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## Employee is-a Person
class Employee < Person

    def initialize(name, salary)
        ## ?? hmm what is this strange magic?
        # To call super from inside a method, 
        # that tells Ruby to look in the superclass 
        # of the current class and find a method 
        # with the same name as the one from which 
        # super is called. super is a method call 
        # just like "puts", not "def", so no need an end
        super(name)
        ## Employee has-a salary
        @salary = salary
    end

end

## Fish is-a class
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Peron
mary = Person.new("Mary")

## mary has-a satan
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()   