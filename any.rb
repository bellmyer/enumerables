#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/log_data'

inventory = PetInventory.new
inventory.display

print "any pets have three legs? "
puts inventory.any?{|pet| pet.legs == 3}

print "any pets sold out? "
puts inventory.any?(&:sold_out?)

print "any pets have a quantity of just one? "
puts inventory.any?{|pet| pet.quantity == 1}

puts "\n--------\n\n"

File.open('./data/pokey_things.txt') do |f|
  puts "pokey things: "
  puts f.read
  puts

  print "do any pokey things have at least 5 letters? "
  f.seek(0)
  p f.any?{|line| line.size >= 3}

  print "are pillows on the list of pokey things? "
  f.seek(0)
  p f.any?{|line| line.include?('pillow')}
end

puts "\n--------\n\n"

requests = LogData.new('./data/heroku.log')

print "any heroku requests result in error? "
p requests.any?{|request| request[:at] == 'error'}

print "any missing page errors? "
p requests.any?{|request| request[:status] == 404}