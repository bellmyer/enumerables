#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/log_data'

inventory = PetInventory.new
inventory.display


puts "chunking pets by leg count: "
pets_by_leg_count = inventory.chunk(&:legs)

pets_by_leg_count.each do |leg_count, pet_list|
  puts "  #{leg_count}: #{pet_list.map(&:name).join(',')}"
end

puts "\n--------\n\n"

File.open('./data/pokey_things.txt') do |f|
  puts "pokey things: "
  puts f.read
  puts
  
  puts "chunking pokey things by first letter: "
  f.seek(0)

  pokey_things_by_first_letter = f.chunk{|line| line[0]}
  
  pokey_things_by_first_letter.each do |letter, list|
    puts "  #{letter}: #{list.map(&:chomp).join(',')}"
  end
end

puts "\n--------\n\n"

requests = LogData.new('./data/heroku.log')

puts "chunking heroku requests by status code: "
by_status = requests.chunk(&:status)

by_status.each do |status, records|
  puts "  #{status}: #{records.map(&:id).join(',')}"
end