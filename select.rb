#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pets with four legs: "
p inventory.select{|pet| pet.legs == 4}.map(&:name)

print "pets with less than 100 in stock: "
p inventory.select{|pet| pet.quantity < 100}.map(&:name)