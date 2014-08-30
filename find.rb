#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "first pet with four legs: "
puts inventory.find{|pet| pet.legs == 4}.name

no_pet = Pet.new('none', 0, 0)
print "first pet with 3 legs: "
puts inventory.find(lambda{no_pet}){|pet| pet.legs == 3}.name