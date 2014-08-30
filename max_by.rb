#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pet with maximum number of legs: "
puts inventory.max_by(&:legs).name