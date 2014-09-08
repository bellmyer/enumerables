#!/usr/bin/env ruby

require './lib/initialize'

print "lowest number: "
p @numbers.min_by{|number| number}

print "lowest number when negative: "
p @numbers.min_by{|number| 0 - number}

divider

print "pet with minimum quantity: "
puts @inventory.min_by(&:quantity).name

print "pet with fewest legs: "
puts @inventory.min_by(&:legs).name

divider

print "first pokey thing, alphabetically: "
@pokey_things.seek(0)
puts @pokey_things.min_by{|pokey_thing| pokey_thing}.chomp

print "smallest pokey thing by letter count: "
@pokey_things.seek(0)
puts @pokey_things.min_by(&:length).chomp

divider

print "heroku request with lowest response time: "
p @requests.min_by(&:response_time).id

print "heroku request with lowest service time: "
p @requests.min_by(&:service).id
