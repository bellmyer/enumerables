#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

pets_by_leg_count = inventory.chunk(&:legs)

pets_by_leg_count.each do |leg_count, pet_list|
  puts "#{leg_count}: #{pet_list.map(&:name).join(',')}"
end