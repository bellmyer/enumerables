#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

puts "pets, listed backwards: "
inventory.reverse_each{|pet| puts pet.name}