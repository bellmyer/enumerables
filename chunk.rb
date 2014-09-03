#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/log_data'

inventory = PetInventory.new
inventory.display

pets_by_leg_count = inventory.chunk(&:legs)

pets_by_leg_count.each do |leg_count, pet_list|
  puts "  #{leg_count}: #{pet_list.map(&:name).join(',')}"
end

puts "\n--------\n\n"

File.open('./data/pokey_things.txt') do |f|
  puts "pokey things: "
  puts f.read
  puts
  
  puts "pokey things by first letter: "
  f.seek(0)

  pokey_things_by_size = f.chunk{|line| line.chomp.size}
  
  pokey_things_by_size.each do |size, list|
    puts "  #{size.inspect}: #{list.map(&:chomp).join(',')}"
  end
end

puts "\n--------\n\n"


requests = LogData.new('./data/heroku.log')

puts "heroku requests by status code: "
by_status = requests.chunk{|request| request[:status]}

by_status.each do |status, request_list|
  puts "  #{status}: #{request_list.map{|rl| rl[:id]}.join(',')}"
end