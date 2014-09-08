#!/usr/bin/env ruby

require './lib/initialize'

def timer repeat=1, &block
  start = Time.now

  repeat.times{ block.call }

  Time.now - start
end

print "numbers sorted: "
p @numbers.sort_by{|number| number}

print "numbers sorted by negative values: "
p @numbers.sort_by{|number| 0 - number}

divider

print "sorting pets by quantity: "
p @inventory.sort_by(&:quantity).map(&:name)
puts

puts "all the comparisons required to sort: "

comparisons = 0
duration = timer do
  @inventory.sort_by{|pet| comparisons += 1; puts "    #{pet.name}"; pet}
end

puts "total comparisons: #{comparisons}"
puts "total time: #{sprintf('%.4f', duration)} seconds"

divider

puts "sorting pets by time-consuming secret code: "
puts "all the comparisons required to sort: "

comparisons = 0
duration = timer do
  @inventory.sort_by{|pet| comparisons += 1; code = pet.secret_code; puts "    #{code}"; code}
end

puts "total comparisons: #{comparisons}"
puts "total time: #{sprintf('%.4f', duration)} seconds"
