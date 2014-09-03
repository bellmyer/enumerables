#!/usr/bin/env ruby

list_a = [1, 2, 3]
list_b = [4, 5, 6]

puts "zipping two lists together: "
p list_a
p list_b
print " =>  "
p list_a.zip(list_b)
puts

list_a = ['zipping', 'be', 'useful', 'not']
list_b = ['can', 'surprisingly', 'but', 'here']

puts "zipping for fun, then joining with spaces: "
p list_a
p list_b
print " =>  "
p list_a.zip(list_b).flatten.join(' ')
puts