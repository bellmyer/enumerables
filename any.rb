#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

file = './data/pokey_things.txt'

print "any pets have three legs? "
puts inventory.any?{|pet| pet.legs == 3}

print "any pets sold out? "
puts inventory.any?(&:sold_out?)

print "any pets have a quantity of just one? "
puts inventory.any?{|pet| pet.quantity == 1}

puts '--------'

File.open(file) do |f|
  puts "pokey things: "
  puts f.read
  puts

  print "do any pokey things have at least 5 letters? "
  f.seek(0)
  p f.any?{|line| line.size >= 3}

  print "are pillows on the list of pokey things? "
  f.seek(0)
  p f.any?{|line| line.include?('pillow')}
end


