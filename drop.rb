#!/usr/bin/env ruby

require './lib/initialize'

print "skipping the first two numbers: "
p @numbers.drop(2)

print "skipping no numbers: "
p @numbers.drop(0)

divider

print "skipping the first two pets: "
p @inventory.drop(2).map(&:name)

print "skipping no pets: "
p @inventory.drop(0).map(&:name)

divider

print "skipping first pokey thing: "
@pokey_things.seek(0)
p @pokey_things.drop(1).map(&:chomp)

print "skipping no pokey things: "
@pokey_things.seek(0)
p @pokey_things.drop(0).map(&:chomp)

divider

print "skipping first 3 heroku requests: "
p @requests.drop(3).map(&:id)

print "skipping no heroku requests: "
p @requests.drop(0).map(&:id)
