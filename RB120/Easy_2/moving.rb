module Walkable
  def walk
    puts "#{name} #{gait} forward"
  end
end

class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end                                 # ^^^^^^^^^^^^^^^^^^^^

  # def walk                          # we could also use this method and inherit the other classes
  #   puts "#{name} #{gait} forward"  # Cat subclass from Person and Cheetah subclass from Cat
  # end                               # Mixin is better because of the has a relationship of the method

  private

  def gait
    "strolls"
  end
end

class Cat 
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah 
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

# You are only allowed to write one new method to do this.

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"