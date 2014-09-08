#!/usr/bin/env ruby

require './lib/initialize'

print "all even numbers: "
p @numbers.select(&:even?)

print "all positive numbers: "
p @numbers.select{|number| number >= 0}

divider

print "all pets with legs: "
p @inventory.select{|pet| pet.legs > 0}.map(&:name)

print "all pets in stock: "
p @inventory.select(&:in_stock?).map(&:name)

print "all pets with name: "
p @inventory.select{|pet| !pet.name.nil?}.map(&:name)

divider

print "pokey things with at least 5 letters: "
@pokey_things.seek(0)
p @pokey_things.select{|line| line.chomp.size >= 5}.map(&:chomp)

print "pokey things with the letter 'e': "
@pokey_things.seek(0)
p @pokey_things.select{|line| line.include?('e')}.map(&:chomp)

divider

print "all heroku requests made via the GET method: "
p @requests.select(&:get?).map(&:id)

print "all heroku requests made via the POST method: "
p @requests.select(&:post?).map(&:id)
