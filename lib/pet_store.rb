require_relative './pet'

class PetStore
  include Enumerable
  
  attr_reader :pets
  
  def initialize
    @dogs = Pet.new('dog', 4, 100)
    @cats = Pet.new('cat', 4, 50)
    @fish = Pet.new('fish', 0, 1000)
    @scorpions = Pet.new('scorpion', 8, 1)
  end
  
  def print_inventory
    puts "Inventory:"
    
    each do |pet|
      puts sprintf("%s: %d leg(s), %d in stock", pet.name, pet.legs, pet.quantity)
    end
    
    puts
  end
  
  def each
    yield @dogs
    yield @cats
    yield @fish
    yield @scorpions
  end
end