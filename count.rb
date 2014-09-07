#!/usr/bin/env ruby

require './lib/initialize'

print "count numbers: "
p @numbers.count

print "count even numbers: "
p @numbers.count(&:even?)

print "count divisible by three: "
p @numbers.count{|number| number % 3 == 0}

divider

print "count pets: "
puts @inventory.count

print "count in-stock pets: "
puts @inventory.count(&:in_stock?)

print "count pets with four legs: "
puts @inventory.count{|pet| pet.legs == 4}

divider

print "count pokey things with at least 3 letters: "
@pokey_things.seek(0)
p @pokey_things.map(&:chomp).count{|word| word.size >= 3}

print "count pokey things with the letter 'e': "
@pokey_things.seek(0)
p @pokey_things.count{|line| line.include?('e')}

divider

print "count heroku requests made via the GET method: "
p @requests.count(&:get?)

print "count heroku requests with errors: "
p @requests.count{|request| request.error?}