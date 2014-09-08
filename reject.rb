#!/usr/bin/env ruby

require './lib/initialize'

print "all odd numbers: "
p @numbers.reject(&:even?)

print "all negative numbers: "
p @numbers.reject{|number| number >= 0}

divider

print "all pets without legs: "
p @inventory.reject{|pet| pet.legs > 0}.map(&:name)

print "all pets out of stock: "
p @inventory.reject(&:in_stock?).map(&:name)

print "all pets without a name: "
p @inventory.reject{|pet| !pet.name.nil?}.map(&:name)

divider

print "pokey things without at least 5 letters: "
@pokey_things.seek(0)
p @pokey_things.reject{|line| line.chomp.size >= 5}.map(&:chomp)

print "pokey things without the letter 'e': "
@pokey_things.seek(0)
p @pokey_things.reject{|line| line.include?('e')}.map(&:chomp)

divider

print "all heroku requests NOT made via the GET method: "
p @requests.reject(&:get?).map(&:id)

print "all heroku requests NOT made via the POST method: "
p @requests.reject(&:post?).map(&:id)
