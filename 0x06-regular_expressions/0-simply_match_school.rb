#!/usr/bin/env ruby
require 'onigmo'

# Check if there is an argument passed while running the script
if ARGV.empty?
  puts "Neha loves School, that is why she is a School mentor :)"
  exit
end

# Use the `scan` method with the Oniguruma regular expression engine to find matches and join them
regex = Onigmo::Regexp.new('School')
puts regex.match(ARGV[0]).to_a.join

