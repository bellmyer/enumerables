#!/usr/bin/env ruby

require './lib/initialize'

def prime? number
  return true if number < 4
  
  (2...number).each do |factor|
    return false if number % factor == 0
  end
  
  true
end

print "taking until we find an even number: "
p @numbers.take_while(&:odd?)

print "taking until we find a non-prime number: "
p @numbers.take_while{|number| prime?(number)}

divider

print "taking until we find a pet with low inventory: "
p @inventory.take_while{|pet| pet.quantity >= 50}.map(&:name)

print "taking until we find the first legless pet: "
p @inventory.take_while{|pet| pet.legs > 0}.map(&:name)

divider

print "taking until we see a pokey thing with the letter 'f': "
@pokey_things.seek(0)
p @pokey_things.take_while{|thing| !thing.include?('f')}.map(&:chomp)

print "taking until a pokey thing has more than 7 letters: "
@pokey_things.seek(0)
p @pokey_things.take_while{|thing| thing.chomp.length < 7}.map(&:chomp)

divider

print "taking until a request uses the POST method: "
p @requests.take_while{|request| request.method != 'POST'}.map(&:id)

print "taking until a request is successful: "
p @requests.take_while{|request| request.error?}.map(&:id)
