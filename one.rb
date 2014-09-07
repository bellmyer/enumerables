#!/usr/bin/env ruby

require './lib/initialize'

print "only one even number? "
p @numbers.one?(&:even?)

print "only one number 5? "
p @numbers.one?{|number| number == 5}

divider

print "only one pet with eight legs? "
puts @inventory.one?{|pet| pet.legs == 8}

print "only one pet with four legs? "
puts @inventory.one?{|pet| pet.legs == 4}

divider

print "is there only one thing with the word cactus? "
@pokey_things.seek(0)
p @pokey_things.one?{|thing| thing =~ /cactus/}

print "is there exactly one thing that starts with the letter p? "
@pokey_things.seek(0)
p @pokey_things.one?{|thing| thing[0] == 'p'}

divider

print "exactly one error? "
p @requests.one?(&:error?)

print "exactly one GET request? "
p @requests.one?{|request| request.method == 'GET'}