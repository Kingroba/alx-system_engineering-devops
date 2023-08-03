#!/usr/bin/env ruby
require 'onigmo'

def match_school(input)
  # Use the `match` method with the Oniguruma regular expression engine to find the first match
  regex = Onigmo::Regexp.new('School')
  match_data = regex.match(input)

  # Check if there is a match and return the matched substring
  if match_data
    matched_substring = match_data.to_s
    puts "Match: #{matched_substring}"
    puts "Length: #{matched_substring.length} chars long"
  else
    puts "No match found for 'School'"
  end
end

# Check if there is an argument passed while running the script
if ARGV.empty?
  puts "Neha loves School, that is why she is a School mentor :)"
else
  input = ARGV[0]
  match_school(input)
end

