#!/usr/bin/env ruby

require './lib/initialize'

print "all numbers: "
p @numbers.entries

divider

print "leg counts for all pets: "
p @inventory.entries.map(&:legs)

print "leg totals for each pet type, if all pets have 100 in stock: "
p @inventory.entries(:quantity => 100).map{|pet| pet.legs * pet.quantity}

divider

print "all pokey things: "
@pokey_things.seek(0)
p @pokey_things.entries.map(&:chomp)

divider

print "all heroku requests: "
p @requests.entries

print "all heroku requests in simple format: "
p @requests.entries(:simple)
