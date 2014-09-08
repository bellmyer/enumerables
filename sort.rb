#!/usr/bin/env ruby

require './lib/initialize'

def timer repeat=1, &block
  start = Time.now

  repeat.times{ block.call }

  Time.now - start
end

print "numbers sorted: "
p @numbers.sort

print "numbers sorted by negative values: "
p @numbers.sort{|a,b| 0 - a <=> 0 - b}

divider

print "sorting pets by quantity: "
p @inventory.sort.map(&:name)
puts

puts "all the comparisons required to sort: "

comparisons = 0
duration = timer do
  @inventory.sort{|pet_a, pet_b| comparisons += 1; puts "    #{pet_a.name} vs #{pet_b.name}"; pet_a <=> pet_b}
end

puts "total comparisons: #{comparisons}"
puts "total time: #{sprintf('%.4f', duration)} seconds"
puts "\n\n"

puts "sorting pets by time-consuming secret code: "
puts "all the comparisons required to sort: "

comparisons = 0
duration = timer do
  @inventory.sort do |pet_a, pet_b|
    comparisons += 1
    code_a = pet_a.secret_code
    code_b = pet_b.secret_code
    puts "    #{code_a} vs #{code_b}"
    
    code_a <=> code_b
  end
end

puts "total comparisons: #{comparisons}"
puts "total time: #{sprintf('%.4f', duration)} seconds"
