#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pet names: "
p inventory.entries.map(&:name)

print "pet objects: "
p inventory.entries