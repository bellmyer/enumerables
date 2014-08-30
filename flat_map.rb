#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "names and legs: "
p inventory.flat_map{|pet| [pet.name, pet.legs]}

print "names and in stock status: "
p inventory.flat_map{|pet| [pet.name, pet.in_stock?]}