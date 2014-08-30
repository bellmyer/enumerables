#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "skipping the first two pets: "
p inventory.drop(2).map(&:name)

print "skipping nothing: "
p inventory.drop(0).map(&:name)