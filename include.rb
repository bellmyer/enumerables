#!/usr/bin/env ruby

require './lib/initialize'

print "does list include the number five? "
p @numbers.include?(5)

print "does list include the number 100? "
p @numbers.include?(100)

divider

dog = @inventory.first
zebra = Pet.new('zebra', 4, 0)

print "does inventory include dogs? "
puts @inventory.include?(dog)

print "does inventory include zebras? "
puts @inventory.include?(zebra)

divider

print "is cactus on the list of pokey things? "
@pokey_things.seek(0)
p @pokey_things.map(&:chomp).include?('cactus')

print "are pillows on the list of pokey things? "
@pokey_things.seek(0)
p @pokey_things.map(&:chomp).include?('pillow')

divider

print "any heroku requests result in error? "
p @requests.map(&:message_type).include?('error')

print "any missing page errors? "
p @requests.map(&:status).include?(404)