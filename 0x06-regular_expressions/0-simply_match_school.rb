#!/usr/bin/env ruby

# Match "School" in the input string and concatenate the matches
matches = ARGV[0].scan(/School/).join

# Output the result
puts "Match found with 'School': #{matches}"

