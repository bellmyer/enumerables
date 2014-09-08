#!/usr/bin/env ruby

require './lib/initialize'

puts "all numbers with index: "
@numbers.each_with_index{|number, i| puts "    #{i}: #{number}"}

puts "the even status for all numbers, with index: "
@numbers.each_with_index{|number, i| puts "    #{i}: #{number.even?}"}

divider

puts "leg counts for all pets, with index: "
@inventory.each_with_index{|pet, i| puts "    #{i}: #{pet.legs}"}

puts "leg totals for each pet type, with index: "
@inventory.each_with_index{|pet, i| puts "    #{i}: #{pet.legs * pet.quantity}"}

divider

@pokey_things.seek(0)
puts "letter counts for all pokey things, with index: "
@pokey_things.each_with_index{|thing, i| puts "    #{i}: #{thing.chomp.size}"}

@pokey_things.seek(0)
puts "all pokey things, capitalized, with index: "
@pokey_things.each_with_index{|thing, i| puts "    #{i}: #{thing.chomp.capitalize}"}

divider

puts "request methods for all heroku requests, with index: "
@requests.each_with_index{|request, i| puts "    #{i}: #{request.method}"}

puts "total response times for all heroku requests, with index: "
@requests.each_with_index{|request, i| puts "    #{i}: #{request.connect + request.service}"}
