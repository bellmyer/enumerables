#!/usr/bin/env ruby

require './lib/initialize'

print "numbers matching 5-20: "
p @numbers.grep(5..20)

print "numbers matching 5-20, multiplied by 2: "
p @numbers.grep(5..20){|x| x * 2}

divider

print "all pet names with the letter o: "
p @inventory.map(&:name).grep(/o/)

print "all pet names with the letter o, capitalized: "
p @inventory.map(&:name).grep(/o/){|name| name.capitalize}

divider

print "pokey things involving cactus: "
@pokey_things.seek(0)
p @pokey_things.grep(/cactus/).map(&:chomp)

print "pokey things involving cactus, capitalized: "
@pokey_things.seek(0)
p @pokey_things.grep(/cactus/){|thing| thing.chomp.capitalize}

divider

print "javascript requests in heroku logs: "
p @requests.map(&:path).grep(/javascript/)

print "javascript requests in heroku logs, shortened: "
p @requests.map(&:path).grep(/javascript/){|path| path.gsub(%r!/javascript/!, '')}
