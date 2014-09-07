#!/usr/bin/env ruby

require './lib/initialize'

print "index of first even number: "
p @numbers.find_index(&:even?)

print "index of first number divisible by three: "
p @numbers.find_index{|number| number % 3 == 0}

divider

print "index for scorpions: "
puts @inventory.find_index{|pet| pet.name == 'scorpion'}

print "index for first four-legged pet: "
puts @inventory.find_index{|pet| pet.legs == 4}

print "index for first pet with over 100 in stock: "
puts @inventory.find_index{|pet| pet.quantity > 100}

divider

print "index of first pokey thing with at least 3 letters: "
@pokey_things.seek(0)
p @pokey_things.map(&:chomp).find_index{|word| word.size >= 3}

print "index of first pokey thing with the letter 'e': "
@pokey_things.seek(0)
p @pokey_things.find_index{|line| line.include?('e')}

divider

print "index of first heroku request made via the POST method: "
p @requests.find_index(&:post?)

print "index of first heroku request with error: "
p @requests.find_index{|request| request.error?}