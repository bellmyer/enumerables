#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

puts "pets grouped by two: "
inventory.each_slice(2){|pets| p pets.map(&:name)}

puts "pets grouped by three: "
inventory.each_slice(3){|pets| p pets.map(&:name)}
