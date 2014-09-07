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
@inventory.chunk(&:legs).each do |leg_count, pet_list|
  puts "  #{leg_count}: #{pet_list.map(&:name).join(',')}"
end

divider

puts "chunking pokey things by first letter: "
@pokey_things.chunk{|line| line[0]}.each do |letter, list|
  puts "  #{letter}: #{list.map(&:chomp).join(',')}"
end

divider

puts "chunking heroku requests by status code: "
@requests.chunk(&:status).each do |status, records|
  puts "  #{status}: #{records.map(&:id).join(',')}"
end