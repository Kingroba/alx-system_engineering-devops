#!/usr/bin/env ruby

# Match "School" in the input string
matches = ARGV[0].scan(/School/)

# Output the results
if matches.empty?
  puts "No match found with 'School'"
else
  puts "Match found with 'School': #{matches.join(", ")}"
end

