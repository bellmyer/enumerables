#!/usr/bin/env ruby

require './lib/initialize'

print "first even number: "
p @numbers.find(&:even?)

print "first number divisible by three: "
p @numbers.find{|number| number % 3 == 0}

divider

print "first pet with four legs: "
puts @inventory.find{|pet| pet.legs == 4}.name

no_pet = Pet.new('none', 0, 0)
print "first pet with 3 legs: "
puts @inventory.find(lambda{no_pet}){|pet| pet.legs == 3}.name

divider

print "first pokey thing with at least 3 letters: "
@pokey_things.seek(0)
p @pokey_things.map(&:chomp).find{|word| word.size >= 3}

print "first pokey thing with the letter 'e': "
@pokey_things.seek(0)
p @pokey_things.find{|line| line.include?('e')}

divider

print "first heroku request made via the POST method: "
p @requests.find(&:post?).id

print "first heroku request with error: "
p @requests.find{|request| request.error?}.id