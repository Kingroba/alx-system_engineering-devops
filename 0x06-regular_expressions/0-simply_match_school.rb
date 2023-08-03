#!/usr/bin/env ruby
require 'onigmo'

# Check if there is an argument passed while running the script
if ARGV.empty?
  puts "Neha loves School, that is why she is a School mentor :)"
  exit
end

# Use the `match` method with the Oniguruma regular expression engine to find the first match
regex = Onigmo::Regexp.new('School')
match_data = regex.match(ARGV[0])

# Check if there is a match and print the result
if match_data
  matched_substring = match_data.to_s
  puts matched_substring
  puts "(#{matched_substring.length} chars long)"
else
  puts "No match found for 'School'"
end

