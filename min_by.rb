#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pet with minimum number of legs: "
puts inventory.min_by(&:legs).name