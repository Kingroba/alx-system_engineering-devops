#!/usr/bin/env ruby
puts ARGV[0].scan(/(?<=from:)\+?\d+(?=\])|(?<=to:)\+?\d{10,11}|(?<=flags:)\S+(?=\])/).join(',')

