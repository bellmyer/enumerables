#!/usr/bin/env ruby

require './lib/initialize'

print "first even number: "
p @numbers.detect(&:even?)

print "first number divisible by three: "
p @numbers.detect{|number| number % 3 == 0}

divider

print "first pet with four legs: "
puts @inventory.detect{|pet| pet.legs == 4}.name

no_pet = Pet.new('none', 0, 0)
print "first pet with 3 legs: "
puts @inventory.detect(lambda{no_pet}){|pet| pet.legs == 3}.name

divider

print "first pokey thing with at least 3 letters: "
@pokey_things.seek(0)
p @pokey_things.map(&:chomp).detect{|word| word.size >= 3}

print "first pokey thing with the letter 'e': "
@pokey_things.seek(0)
p @pokey_things.detect{|line| line.include?('e')}

divider

print "first heroku request made via the POST method: "
p @requests.detect(&:post?).id

print "first heroku request with error: "
p @requests.detect{|request| request.error?}.id