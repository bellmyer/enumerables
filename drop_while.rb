#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

puts "only pets that line up AFTER a big inventory: "
p inventory.drop_while{|pet| pet.quantity < 500}.map(&:name)