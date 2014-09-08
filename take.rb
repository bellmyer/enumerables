#!/usr/bin/env ruby

require './lib/initialize'

print "taking only the first two numbers: "
p @numbers.take(2)

print "taking numbers: "
p @numbers.take(0)

divider

print "taking the first two pets: "
p @inventory.take(2).map(&:name)

print "taking no pets: "
p @inventory.take(0).map(&:name)

divider

print "taking first pokey thing: "
@pokey_things.seek(0)
p @pokey_things.take(1).map(&:chomp)

print "taking no pokey things: "
@pokey_things.seek(0)
p @pokey_things.take(0).map(&:chomp)

divider

print "taking first 3 heroku requests: "
p @requests.take(3).map(&:id)

print "taking no heroku requests: "
p @requests.take(0).map(&:id)
