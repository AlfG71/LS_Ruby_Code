

class Pet                       # Alternate solution worked with Karis
  attr_reader :type, :name
  
  def initialize(type, name)
    @type = type
    @name = name
  end
end


class Owner
  attr_reader :name, :pets


  def initialize(name)
    @name = name
    @pets = []
  end


  def number_of_pets
    @pets.size
  end
end


class Shelter
  @@owners = []


  def adopt(owner, pet)
    owner.pets << pet
    @@owners << owner if !@@owners.include?(owner) #class variable contains the pet arrays of each owner
  end


  def print_adoptions
    @@owners.each do |owner|  #[pets]
      puts "#{owner.name} has adopted the following pets:" # method call on owner object
      owner.pets.each do |pet|
        puts "a #{pet.type} named #{pet.name}"    # method call on pet object
      end
    end
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')


phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')


shelter = Shelter.new


shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)


shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions


puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."


# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin


# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester


# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.













# class Pet
#   attr_reader :pet, :name

#   def initialize(pet, name)
#     @pet = pet
#     @name = name
#   end

#   def to_s
#   	"a #{pet} named #{name}"
#   end
# end

# class Owner  
# 	attr_reader :name, :pets

#   def initialize(name)
#     @name = name 
#     @pets = []
#   end

#   def add_pet(pet)
#   	@pets << pet
#   end

#   def number_of_pets
#   	pets.size
#   end

#   def print_pets
#     puts pets
#   end
# end

# class Shelter

#   def initialize
#   	@owners = {}
#   end

#   def adopt(owner, pet)
#   	owner.add_pet(pet)
#   	@owners[owner.name] ||= owner
#   end

#   def print_adoptions
#   	@owners.each_pair do |owner, name| 
# 	  	puts "#{owner} has adopted the following pets:"
# 	  	owner.print_pets
# 	  	puts
#     end
#   end
# end

class Pet
  attr_reader :animal, :name

  @@number_of_pets = 0

  def initialize(animal, name)
    @animal = animal
    @name = name
    @@number_of_pets += 1
  end

  def self.unadopted_pets
    @@number_of_pets
  end

  def to_s
    "a #{animal} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def number_of_pets
    pets.size
  end

  def print_pets
    puts pets
  end
end

class Shelter
  def initialize
    @owners = {}
  end

  def adopt(owner, pet)
    owner.add_pet(pet)
    @owners[owner.name] ||= owner
  end

  def print_adoptions
    @owners.each_pair do |name, owner|
      puts "#{name} has adopted the following pets:"
      owner.print_pets
      puts
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
daisy        = Pet.new('dog', 'Daisy')
fidge        = Pet.new('cat', 'Fidgert')

asta         = Pet.new('dog', 'Asta')
laddie       = Pet.new('dog', 'Laddie')
fluffy       = Pet.new('cat', 'Fluffy')
kat          = Pet.new('cat', 'Kat')
ben          = Pet.new('cat', 'Ben')
chatterbox   = Pet.new('parakeet', 'Chatterbox')
bluebell     = Pet.new('parakeet', 'Bluebell')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
alfg = Owner.new('A Gonzalez')

shelter = Shelter.new
shelter.adopt(alfg, daisy)
shelter.adopt(alfg, fidge)
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{alfg.name} has #{alfg.number_of_pets} adopted pets."
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts Pet.unadopted_pets

# The Animal Shelter has the following unadopted pets:
# a dog named Asta
# a dog named Laddie
# a cat named Fluffy
# a cat named Kat
# a cat named Ben
# a parakeet named Chatterbox
# a parakeet named Bluebell
#    ...

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.
# The Animal shelter has 7 unadopted pets.

#Expected output

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.





# class Pet
# 	attr_reader :animal_type, :name_of_pet

# 	def initialize(animal_type, name_of_pet)
# 		@animal_type = animal_type
# 		@name_of_pet = name_of_pet
# 	end

# 	def to_s
# 		"#{name_of_pet} the #{animal_type}"
# 	end
# end

# class Owner < Pet
# 	attr_reader :owner_name, :name, :number_of_pets

#   def initialize(owner_name)
#     @owner_name = owner_name
#     @number_of_pets = []
#   end

#   def adopt(owner_name, pet_name)
#   	self.owner_name = owner_name
# 	  self.number_of_pets << pet_name
#   end

#   def to_s
#   	"#{owner_name}"
#   end
# end

# class Shelter < Owner

# 	def initialize
# 	end

#   def print_adoptions
#     puts "#{@owner_name} has adopted the following pets:"
#     @pets_owned.each do |pet|
#       puts "a #{animal_type} named #{name_of_pet}"
#     end
#   end

#   def to_s
#   	"#{}"
#   end

# end