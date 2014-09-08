#!/usr/bin/env ruby

require './lib/initialize'

print "sum of all the numbers: "
p @numbers.inject(:+)

print "multiplying all the numbers: "
p @numbers.inject{|sum, number| sum * number}

divider

print "count all the legs in the store: "
p @inventory.inject(0){|sum, pet| sum + (pet.legs * pet.quantity)}

print "animal with highest quantity: "
puts @inventory.inject{|most_pet, pet| most_pet.quantity > pet.quantity ? most_pet : pet}.name

divider

print "number of words in all pokey things: "
@pokey_things.seek(0)
p @pokey_things.inject(0){|sum, pokey_thing| sum + pokey_thing.split(/\s+/).size}

print "pokey thing with the most words: "
@pokey_things.seek(0)
puts @pokey_things.inject{|longest_thing, thing| longest_thing.size > thing.size ? longest_thing : thing}

divider

print "total time to serve all requests: "
p @requests.inject(0){|sum, request| sum + request.response_time}

print "request with the slowest response time: "
p @requests.inject{|slowest_request, request| slowest_request.response_time < request.response_time ? slowest_request : request }.id
