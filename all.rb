#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

file = './data/pokey_things.txt'

print "all pets have legs? "
puts inventory.all?{|pet| pet.legs > 0}

print "all pets are in stock? "
puts inventory.all?(&:in_stock?)

print "all pets have at least 5 in stock? "
puts inventory.all?{|pet| pet.quantity >= 5}

print "if list is empty, is everything true? "
p [].all?{|x| x == true}

puts '--------'

File.open(file) do |f|
  puts "pokey things: "
  puts f.read
  puts
  
  print "do all pokey things have at least 3 letters? "
  f.seek(0)
  p f.all?{|line| line.size >= 3}

  print "do all pokey things have the letter 'e'? "
  f.seek(0)
  p f.all?{|line| line.include?('e')}
end
