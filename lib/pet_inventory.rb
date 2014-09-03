require_relative './pet'

class PetInventory
  include Enumerable
  
  attr_reader :pets
  
  def initialize
    @dogs = Pet.new('dog', 4, 100)
    @cats = Pet.new('cat', 4, 50)
    @fish = Pet.new('fish', 0, 1000)
    @scorpions = Pet.new('scorpion', 8, 1)
    @beetles = Pet.new('beetle', 6, 10_000)
    @monkeys = Pet.new('monkey', 2, 2)
    @rocks = Pet.new('rock', 0, 1)
  end
  
  def display
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
    yield @beetles
    yield @monkeys
    yield @rocks
  end
end