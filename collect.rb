#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/log_data'

inventory = PetInventory.new
inventory.display

print "pet names: "
p inventory.collect(&:name)

print "pet leg counts: "
p inventory.collect{|pet| pet.legs}

puts "\n--------\n\n"
file = './data/pokey_things.txt'

File.open(file) do |f|
  puts "pokey things: "
  puts f.read
  puts

  puts "pokey things, capitalized: "
  f.seek(0)
  puts f.collect{|line| line.capitalize}
  puts
  
  puts "pokey things, truncated to 10 characters max: "
  f.seek(0)
  puts f.collect{|line| line[0,10]}
end

puts "\n--------\n\n"

requests = LogData.new('./data/heroku.log')

puts "list of heroku request status codes: "
p requests.collect(&:status)
puts

puts "total request times: "
p requests.collect{|request| request.connect + request.service}
puts
