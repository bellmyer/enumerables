#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pets with minimum/maximum number of legs: "
p inventory.minmax_by(&:legs).map(&:name)