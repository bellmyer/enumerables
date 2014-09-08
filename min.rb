#!/usr/bin/env ruby

require './lib/initialize'

print "lowest number: "
p @numbers.min

print "lowest number when negative: "
p @numbers.min{|a,b| 0 - a <=> 0 - b}

divider

print "pet with minimum quantity: "
puts @inventory.min.name

print "pet with fewest legs: "
puts @inventory.min{|a,b| a.legs <=> b.legs}.name

divider

print "first pokey thing, alphabetically: "
@pokey_things.seek(0)
puts @pokey_things.min.chomp

print "smallest pokey thing by letter count: "
@pokey_things.seek(0)
puts @pokey_things.min{|a,b| a.length <=> b.length}.chomp

divider

print "heroku request with lowest response time: "
p @requests.min.id

print "heroku request with lowest service time: "
p @requests.min{|a,b| a.service <=> b.service}.id
