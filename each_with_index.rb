#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

puts "numbered pet list: "
inventory.each_with_index{|pet, i| puts "pet #{i}: #{pet.name}"}