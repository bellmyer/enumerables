#!/usr/bin/env ruby

require './lib/initialize'

print "highest number: "
p @numbers.max_by{|number| number}

print "highest number when negative: "
p @numbers.max_by{|number| 0 - number}

divider

print "pet with highest quantity: "
puts @inventory.max_by(&:quantity).name

print "pet with most legs: "
puts @inventory.max_by(&:legs).name

divider

print "last pokey thing, alphabetically: "
@pokey_things.seek(0)
puts @pokey_things.max_by{|pokey_thing| pokey_thing}.chomp

print "largest pokey thing by letter count: "
@pokey_things.seek(0)
puts @pokey_things.max_by(&:length).chomp

divider

print "heroku request with highest response time: "
p @requests.max_by(&:response_time).id

print "heroku request with highest service time: "
p @requests.max_by(&:service).id
