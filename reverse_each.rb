#!/usr/bin/env ruby

require './lib/initialize'

print "all numbers, backward: "
p @numbers.reverse_each.entries

divider

print "leg counts for all pets, backward: "
p @inventory.reverse_each.map(&:legs)

puts "leg totals for each pet type, if all pets have 100 in stock (backward): "
@inventory.reverse_each(:quantity => 100){|pet| puts "    #{pet.legs * pet.quantity}"}

divider

print "all pokey things, backward: "
@pokey_things.seek(0)
p @pokey_things.reverse_each.map(&:chomp)

divider

puts "all heroku requests, backward: "
@requests.reverse_each{|request| puts "    #{request}"}

puts "all heroku requests in simple format (backward): "
@requests.reverse_each(:simple){|request| puts "    #{request}"}
