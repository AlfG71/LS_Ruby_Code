# Modify the following code to accept a string containing a first and last name. The name should be split into two instance variables in the setter method, then joined in the getter method to form a full name.

class Person
  attr_accessor :name

  def name=(name)
    @first_name, @last_name = name.split(' ')  
  end

  def name
    @first_name + ' ' + @last_name
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name






# class Cat
# 	attr_accessor :name

#   def initialize(name)
#   	@name = name
#   end

#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new("Sophie")
# kitty2 = Cat.new("Oliver")
# kitty.greet
# kitty2.greet
# kitty.name = "Luna"
# kitty2.name = "Pilot"
# kitty.greet
# kitty2.greet



# Using the following code, create a module named Walkable that contains a method named #walk. This method should print Let's go for a walk! when invoked. Include Walkable in Cat and invoke #walk on kitty.

# module Walkable
#   def walk
#     puts "Let's go for a walk!"
#   end
# end

# class Cat
# 	include Walkable

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet
# kitty.walk




