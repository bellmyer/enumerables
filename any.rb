#!/usr/bin/env ruby

require './lib/initialize'

print "any numbers even? "
p @numbers.any?(&:even?)

print "any numbers negative? "
p @numbers.any?{|number| number < 0}

print "if list is empty, is anything true? "
p [].any?(&:even?)

divider

print "any pets have three legs? "
puts @inventory.any?{|pet| pet.legs == 3}

print "any pets sold out? "
puts @inventory.any?(&:sold_out?)

print "any pets have a quantity of just one? "
puts @inventory.any?{|pet| pet.quantity == 1}

divider

puts "pokey things: "
puts @pokey_things.read
puts

print "do any pokey things have at least 5 letters? "
@pokey_things.seek(0)
p @pokey_things.any?{|line| line.size >= 5}

print "are pillows on the list of pokey things? "
@pokey_things.seek(0)
p @pokey_things.any?{|line| line.include?('pillow')}

divider

print "any heroku requests result in error? "
p @requests.any?(&:error?)

print "any missing page errors? "
p @requests.any?{|request| request.status == 404}