#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/log_data'

inventory = PetInventory.new
inventory.display

print "pet names: "
p inventory.map(&:name)

print "pet leg counts: "
p inventory.map{|pet| pet.legs}

puts "\n--------\n\n"
file = './data/pokey_things.txt'

File.open(file) do |f|
  puts "pokey things: "
  puts f.read
  puts

  puts "pokey things, capitalized: "
  f.seek(0)
  puts f.map{|line| line.capitalize}
  puts
  
  puts "pokey things, truncated to 10 characters max: "
  f.seek(0)
  puts f.map{|line| line[0,10]}
  puts
  
  puts "pokey things, in reverse: "
  f.seek(0)
  puts f.map(&:chomp).map{|line| line.reverse}.map{|line| line + "\n"}
end

puts "\n--------\n\n"

requests = LogData.new('./data/heroku.log')

puts "list of heroku request status codes: "
p requests.map(&:status)
puts

puts "total request times: "
p requests.map{|request| request.connect + request.service}
puts
