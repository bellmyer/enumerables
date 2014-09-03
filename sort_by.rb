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
p inventory.sort_by(&:quantity).map(&:name)
puts

puts "all the comparisons required to sort: "

comparisons = 0
duration = timer do
  inventory.sort_by{|pet| comparisons += 1; puts "    #{pet.name}"; pet.quantity}
end

puts "total comparisons: #{comparisons}"
puts "total time: #{sprintf('%.4f', duration)} seconds"
puts "\n\n"

puts "sorting by time-consuming secret code: "
puts "all the comparisons required to sort: "

comparisons = 0
duration = timer do
  inventory.sort_by{|pet| comparisons += 1; puts "    #{pet.secret_code}"; pet.secret_code}
end

puts "total comparisons: #{comparisons}"
puts "total time: #{sprintf('%.4f', duration)} seconds"
puts "\n\n"
