#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "only one pet with eight legs? "
puts inventory.one?{|pet| pet.legs == 8}

print "only one pet with four legs? "
puts inventory.one?{|pet| pet.legs == 4}