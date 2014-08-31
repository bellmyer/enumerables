#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pets with lots of inventory: "
p inventory.reject(&:low_inventory?).map(&:name)

print "pets without legs: "
p inventory.reject{|pet| pet.legs > 0}.map(&:name)