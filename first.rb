#!/usr/bin/env ruby

require './lib/initialize'

print "first number: "
p @numbers.first

print "first three numbers: "
p @numbers.first(3)

divider

print "first pet on the list: "
p @inventory.first.name

print "first 3 pets on the list: "
p @inventory.first(3).map(&:name)

divider

print "first pokey thing: "
@pokey_things.seek(0)
p @pokey_things.first.chomp

print "first three pokey things: "
@pokey_things.seek(0)
p @pokey_things.first(3).map(&:chomp)

divider

print "first heroku request: "
p @requests.first.id

print "first three requests: "
p @requests.first(3).map(&:id)
