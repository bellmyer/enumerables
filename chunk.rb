#!/usr/bin/env ruby

require './lib/initialize'

puts "chunk by even numbers: "
@numbers.chunk(&:even?).each do |even_status, list|
  puts "#{even_status}: #{list.join('')}"
end

puts "chunk more readably by even/odd status: "
@numbers.chunk{|number| number.even? ? 'even' : 'odd'}.each do |eo_status, list|
  puts "#{eo_status}: #{list.join('')}"
end

divider

puts "chunking pets by leg count: "
pets_by_leg_count = @inventory.chunk(&:legs)

pets_by_leg_count.each do |leg_count, pet_list|
  puts "  #{leg_count}: #{pet_list.map(&:name).join(',')}"
end

puts "\n--------\n\n"

puts "pokey things: "
puts @pokey_things.read
puts

puts "chunking pokey things by first letter: "
@pokey_things.seek(0)

pokey_things_by_first_letter = @pokey_things.chunk{|line| line[0]}

pokey_things_by_first_letter.each do |letter, list|
  puts "  #{letter}: #{list.map(&:chomp).join(',')}"
end

puts "\n--------\n\n"

puts "chunking heroku requests by status code: "
by_status = @requests.chunk(&:status)

by_status.each do |status, records|
  puts "  #{status}: #{records.map(&:id).join(',')}"
end