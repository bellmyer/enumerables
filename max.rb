#!/usr/bin/env ruby

require './lib/initialize'

print "higest number: "
p @numbers.max

print "highest number when negative: "
p @numbers.max{|a,b| 0 - a <=> 0 - b}

divider

print "pet with highest quantity: "
puts @inventory.max.name

print "pet with most legs: "
puts @inventory.max{|a,b| a.legs <=> b.legs}.name

divider

print "last pokey thing, alphabetically: "
@pokey_things.seek(0)
puts @pokey_things.max.chomp

print "largest pokey thing by letter count: "
@pokey_things.seek(0)
puts @pokey_things.max{|a,b| a.length <=> b.length}.chomp

divider

print "heroku request with highest total response time: "
p @requests.max.id

print "heroku request with highest service time: "
p @requests.max{|a,b| a.service <=> b.service}.id
