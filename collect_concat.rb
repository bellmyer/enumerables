#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "names and legs: "
p inventory.collect_concat{|pet| [pet.name, pet.legs]}

print "names and in stock status: "
p inventory.collect_concat{|pet| [pet.name, pet.in_stock?]}