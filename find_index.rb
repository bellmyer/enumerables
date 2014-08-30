#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "index for scorpions: "
puts inventory.find_index{|pet| pet.name == 'scorpion'}

print "index for first four-legged pet: "
puts inventory.find_index{|pet| pet.legs == 4}

print "index for first pet with over 100 in stock: "
puts inventory.find_index{|pet| pet.quantity > 100}