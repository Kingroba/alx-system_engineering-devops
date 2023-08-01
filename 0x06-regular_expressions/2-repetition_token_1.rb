#!/usr/bin/env ruby

# This Ruby script takes a command-line argument and performs two regular expression scans on it.

# The first scan looks for occurrences of "htn" in the input argument and prints them.
puts ARGV[0].scan(/htn/).join

# The second scan looks for occurrences of "hbtn" in the input argument and prints them.
puts ARGV[0].scan(/hbtn/).join

# End of the script

