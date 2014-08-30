#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

dog = inventory.first
zebra = Pet.new('zebra', 4, 0)

print "does inventory include dogs? "
puts inventory.include?(dog)

print "does inventory include zebras? "
puts inventory.include?(zebra)