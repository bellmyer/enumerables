#!/usr/bin/env ruby

require './lib/initialize'

print "all numbers multiplied by two: "
p @numbers.collect{|number| number * 2}

print "whether or not each number is even: "
p @numbers.collect(&:even?)

divider

print "leg counts for all pets: "
p @inventory.collect(&:legs)

print "leg totals for each pet type: "
p @inventory.collect{|pet| pet.legs * pet.quantity}

divider

print "letter counts for all pokey things: "
@pokey_things.seek(0)
p @pokey_things.collect{|thing| thing.chomp.size}

print "all pokey things, capitalized: "
@pokey_things.seek(0)
p @pokey_things.collect(&:chomp).collect(&:capitalize)

divider

print "request methods for all heroku requests: "
p @requests.collect(&:method)

print "total response times for all heroku requests: "
p @requests.collect{|request| request.connect + request.service}
