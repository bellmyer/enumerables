#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

puts "print pet names, twice: "
inventory.cycle(2){|pet| puts pet.name}

start_time = Time.now

puts "print pet names repeatedly, for one whole second: "
inventory.cycle do |pet|
  puts pet.name
  break if Time.now - start_time >= 1
end