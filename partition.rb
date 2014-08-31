#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

pet_lists = inventory.partition{|pet| pet.legs == 4}

print "pets with exactly four legs: "
p pet_lists[0].map(&:name)

print "pets without exactly four legs: "
p pet_lists[1].map(&:name)

pet_lists = inventory.partition(&:low_inventory?)

print "pets with low inventory: "
p pet_lists[0].map(&:name)

print "pets with plenty of inventory: "
p pet_lists[1].map(&:name)