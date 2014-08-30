#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "all pets have legs? "
puts inventory.all?{|pet| pet.legs > 0}

print "all pets are in stock? "
puts inventory.all?(&:in_stock?)

print "all pets have at least 5 in stock? "
puts inventory.all?{|pet| pet.quantity >= 5}