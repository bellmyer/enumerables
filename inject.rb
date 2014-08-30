#!/usr/bin/env ruby

print "adding the numbers from 1 to 5: "
puts (1..5).inject(:+)

print "smooshing letters a to f together: "
puts ['a', 'b', 'c', 'd', 'e', 'f'].inject{|word, letter| word + letter}

print "building an array of numbers: "
p (1..5).inject([]){|array, number| array + [number]}