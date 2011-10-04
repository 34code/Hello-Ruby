#!/usr/local/bin/ruby -w

#intro to arrays
a = %w{Ruby hashes are similar to arrays. A hash literal uses braces rather than square brackets. The literal must supply two objects for every entry: one for the key, the other for the value. The key and value are normally separated by =>.}

puts a.inspect

#intro to hashes

inst_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  oboe: 'woodwind',
  trumpet: 'brass',
  violin: 'string',
}

#lets do a shorter puts (displays nil explicitly)
puts "\n\n"
p inst_section[:oboe]
p inst_section[:cello]
p inst_section[:bassoon]

#proof poof!
puts "A trumpet is a #{inst_section[:trumpet]} instrument"

#setting default values of hashes

histogram = Hash.new(0)

puts "\ninitial histogram"
puts histogram['ruby'] # => 0
histogram['ruby'] = histogram['ruby'] + 1 

puts "after increment"
puts histogram['ruby'] # => 1