#!/usr/bin/env ruby

require './lib/initialize'

print "all numbers even? "
p @numbers.all?(&:even?)

print "all numbers positive? "
p @numbers.all?{|number| number >= 0}

print "if list is empty, is everything true? "
p [].all?(&:even?)

divider

print "all pets have legs? "
puts @inventory.all?{|pet| pet.legs > 0}

print "all pets are in stock? "
puts @inventory.all?(&:in_stock?)

print "all pets have a name? "
puts @inventory.all?{|pet| !pet.name.nil?}

divider

print "do all pokey things have at least 3 letters? "
@pokey_things.seek(0)
p @pokey_things.all?{|line| line.size >= 3}

print "do all pokey things have the letter 'e'? "
@pokey_things.seek(0)
p @pokey_things.all?{|line| line.include?('e')}

divider

print "all heroku requests via the GET method? "
p @requests.all?(&:get?)

print "all heroku requests for the same host? "
p @requests.all?{|request| request.host == 'example.herokuapp.com'}