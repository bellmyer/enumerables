#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

def timer repeat=1, &block
  start = Time.now
  
  repeat.times{ block.call }
  
  Time.now - start
end

inventory = PetInventory.new
inventory.display

print "sorting by quantity: "
p inventory.sort.map(&:name)
puts

puts "all the comparisons required to sort: "

comparisons = 0
duration = timer do
  inventory.sort{|pet_a, pet_b| comparisons += 1; puts "    #{pet_a.name} vs #{pet_b.name}"; pet_a <=> pet_b}
end

puts "total comparisons: #{comparisons}"
puts "total time: #{sprintf('%.4f', duration)} seconds"
puts "\n\n"

puts "sorting by time-consuming secret code: "
puts "all the comparisons required to sort: "

comparisons = 0
duration = timer do
  inventory.sort{|pet_a, pet_b| comparisons += 1; puts "    #{pet_a.secret_code} vs #{pet_b.secret_code}"; pet_a <=> pet_b}
end

puts "total comparisons: #{comparisons}"
puts "total time: #{sprintf('%.4f', duration)} seconds"
puts "\n\n"
