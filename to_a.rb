#!/usr/bin/env ruby

require './lib/initialize'

print "all numbers: "
p @numbers.to_a

divider

print "leg counts for all pets: "
p @inventory.to_a.map(&:legs)

print "leg totals for each pet type, if all pets have 100 in stock: "
p @inventory.to_a(:quantity => 100).map{|pet| pet.legs * pet.quantity}

divider

print "all pokey things: "
@pokey_things.seek(0)
p @pokey_things.to_a.map(&:chomp)

divider

print "all heroku requests: "
p @requests.to_a

print "all heroku requests in simple format: "
p @requests.to_a(:simple)
