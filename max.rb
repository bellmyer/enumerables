#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pet with maximum quantity: "
puts inventory.max.name