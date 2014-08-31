#!/usr/bin/env ruby

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

chunks = numbers.slice_before(&:even?)
puts "each set starts with an even number: "
chunks.each{|list| p list}
puts

chunks = numbers.slice_before{|number| number % 3 == 0}
puts "each set starts with a number divisible by three: "
chunks.each{|list| p list}
puts
