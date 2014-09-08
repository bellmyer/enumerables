#!/usr/bin/env ruby

require './lib/initialize'

print "lowest/highest numbers: "
p @numbers.minmax_by{|number| number}

print "lowest/highest numbers when negative: "
p @numbers.minmax_by{|number| 0 - number}

divider

print "pets with minimum/maximum quantity: "
puts @inventory.minmax_by(&:quantity).map(&:name).join(', ')

print "pets with fewest/most legs: "
puts @inventory.minmax_by(&:legs).map(&:name).join(', ')

divider

print "first/last pokey things, alphabetically: "
@pokey_things.seek(0)
puts @pokey_things.minmax_by{|thing| thing}.map(&:chomp).join(', ')

print "smallest/largest pokey things by letter count: "
@pokey_things.seek(0)
puts @pokey_things.minmax_by(&:length).map(&:chomp).join(', ')

divider

print "heroku requests with lowest/highest response times: "
p @requests.minmax_by(&:response_time).map(&:id)

print "heroku requests with lowest/highest service times: "
p @requests.minmax_by{|request| request.service}.map(&:id)
