#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "any pets have three legs? "
puts inventory.any?{|pet| pet.legs == 3}

print "any pets sold out? "
puts inventory.any?(&:sold_out?)

print "any pets have a quantity of just one? "
puts inventory.any?{|pet| pet.quantity == 1}

