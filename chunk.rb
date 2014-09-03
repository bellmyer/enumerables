#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

file = './data/pokey_things.txt'

pets_by_leg_count = inventory.chunk(&:legs)

pets_by_leg_count.each do |leg_count, pet_list|
  puts "#{leg_count}: #{pet_list.map(&:name).join(',')}"
end

puts '--------'

File.open(file) do |f|
  puts "pokey things: "
  puts f.read
  puts
  
  puts "pokey things by first letter: "
  f.seek(0)

  pokey_things_by_size = f.chunk{|line| line.chomp.size}
  
  pokey_things_by_size.each do |size, list|
    puts "#{size.inspect}: #{list.map(&:chomp).join(',')}"
  end
end
