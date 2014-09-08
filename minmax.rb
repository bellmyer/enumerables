#!/usr/bin/env ruby

require './lib/initialize'

print "lowest/highest numbers: "
p @numbers.minmax

print "lowest/highest numbers when negative: "
p @numbers.minmax{|a,b| 0 - a <=> 0 - b}

divider

print "pets with minimum/maximum quantity: "
puts @inventory.minmax.map(&:name).join(', ')

print "pets with fewest/most legs: "
puts @inventory.minmax{|a,b| a.legs <=> b.legs}.map(&:name).join(', ')

divider

print "first/last pokey things, alphabetically: "
@pokey_things.seek(0)
puts @pokey_things.minmax.map(&:chomp).join(', ')

print "smallest/largest pokey things by letter count: "
@pokey_things.seek(0)
puts @pokey_things.minmax{|a,b| a.length <=> b.length}.map(&:chomp).join(', ')

divider

print "heroku requests with lowest/highest response times: "
p @requests.minmax.map(&:id)

print "heroku requests with lowest/highest service times: "
p @requests.minmax{|a,b| a.service <=> b.service}.map(&:id)
