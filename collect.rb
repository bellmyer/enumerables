#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pet names: "
p inventory.collect(&:name)

print "pet leg counts: "
p inventory.collect{|pet| pet.legs}