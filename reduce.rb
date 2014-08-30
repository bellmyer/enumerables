#!/usr/bin/env ruby

print "adding the numbers from 1 to 5: "
puts (1..5).reduce(:+)

print "smooshing letters a to f together: "
puts ['a', 'b', 'c', 'd', 'e', 'f'].reduce{|word, letter| word + letter}

print "building an array of numbers: "
p (1..5).reduce([]){|array, number| array + [number]}