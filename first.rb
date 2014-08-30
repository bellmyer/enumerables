#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "first pet on the list: "
p inventory.first.name

print "first 3 pets on the list: "
p inventory.first(3).map(&:name)