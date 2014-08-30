#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "types of pets: "
puts inventory.count

print "types of pets with four legs: "
puts inventory.count{|pet| pet.legs == 4}