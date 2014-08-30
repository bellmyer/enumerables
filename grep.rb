#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pets with the letter 'o' in the name: "
p inventory.map(&:name).grep(/o/)

print "first letter of each pet with the letter 'i' in the name: "
p inventory.map(&:name).grep(/i/){|name| name[0]}