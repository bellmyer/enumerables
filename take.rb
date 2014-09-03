#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "the first three pets in the list: "
p inventory.take(3).map(&:name)
