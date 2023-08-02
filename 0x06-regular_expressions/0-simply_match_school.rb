#!/usr/bin/env ruby

# Check if there is an argument passed while running the script
if ARGV.empty?
  puts "Neha loves School, that is why she is a School mentor :)"
  exit
end

# Use the `scan` method with the regular expression to find matches and join them
puts ARGV[0].scan(/School/).join

