#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "pets that are listed before fish: "
p inventory.take_while{|pet| pet.name != 'fish'}.map(&:name)


print "sort by quantity, list everything with less than 100 in stock: "
p inventory.sort_by(&:quantity).take_while{|pet| pet.quantity < 100 }.map(&:name)