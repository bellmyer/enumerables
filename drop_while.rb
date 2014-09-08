#!/usr/bin/env ruby

require './lib/initialize'

def prime? number
  return true if number < 4
  
  (2...number).each do |factor|
    return false if number % factor == 0
  end
  
  true
end

print "skipping until we find an even number: "
p @numbers.drop_while(&:odd?)

print "skipping until we find a non-prime number: "
p @numbers.drop_while{|number| prime?(number)}

divider

print "skipping until we find a pet with low inventory: "
p @inventory.drop_while{|pet| pet.quantity >= 50}.map(&:name)

print "skipping until we find the first legless pet: "
p @inventory.drop_while{|pet| pet.legs > 0}.map(&:name)

divider

print "skipping until we see a pokey thing with the letter 'f': "
@pokey_things.seek(0)
p @pokey_things.drop_while{|thing| !thing.include?('f')}.map(&:chomp)

print "skipping until a pokey thing has more than 7 letters: "
@pokey_things.seek(0)
p @pokey_things.drop_while{|thing| thing.chomp.length < 7}.map(&:chomp)

divider

print "skipping until a request uses the POST method: "
p @requests.drop_while{|request| request.method != 'POST'}.map(&:id)

print "skipping until a request is successful: "
p @requests.drop_while{|request| request.error?}.map(&:id)
