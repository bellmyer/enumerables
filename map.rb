#!/usr/bin/env ruby

require './lib/initialize'

print "all numbers multiplied by two: "
p @numbers.map{|number| number * 2}

print "the even status for all numbers: "
p @numbers.map(&:even?)

divider

print "leg counts for all pets: "
p @inventory.map(&:legs)

print "leg totals for each pet type: "
p @inventory.map{|pet| pet.legs * pet.quantity}

divider

print "letter counts for all pokey things: "
@pokey_things.seek(0)
p @pokey_things.map{|thing| thing.chomp.size}

print "all pokey things, capitalized: "
@pokey_things.seek(0)
p @pokey_things.map(&:chomp).map(&:capitalize)

divider

print "request methods for all heroku requests: "
p @requests.map(&:method)

print "total response times for all heroku requests: "
p @requests.map{|request| request.connect + request.service}
