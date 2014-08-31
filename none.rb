#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "no pets sold out? "
puts inventory.none?(&:sold_out?)

print "no pets in stock? "
puts inventory.none?(&:in_stock?)

print "no pets with three legs? "
puts inventory.none?{|pet| pet.legs == 3}

print "no pets with four legs? "
puts inventory.none?{|pet| pet.legs == 4}

