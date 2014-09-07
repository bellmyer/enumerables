#!/usr/bin/env ruby

require './lib/initialize'

print "no even numbers? "
p @numbers.none?(&:even?)

print "no number 15? "
p @numbers.none?{|number| number == 5}

divider

print "no pets sold out? "
puts @inventory.none?(&:sold_out?)

print "no pets in stock? "
puts @inventory.none?(&:in_stock?)

print "no pets with three legs? "
puts @inventory.none?{|pet| pet.legs == 3}

print "no pets with four legs? "
puts @inventory.none?{|pet| pet.legs == 4}

divider

print "no pokey things with the word cactus? "
@pokey_things.seek(0)
p @pokey_things.none?{|thing| thing =~ /cactus/}

print "no pokey things that start with the letter z? "
@pokey_things.seek(0)
p @pokey_things.none?{|thing| thing[0] == 'z'}

divider

print "no errors? "
p @requests.none?(&:error?)

print "no 404 errors? "
p @requests.none?{|request| request.status == 404}