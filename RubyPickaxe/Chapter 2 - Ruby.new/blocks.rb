#learning blocks
some_array = [1, 23, 34, 45, 25]
other_array = [1, 23, 34, 45, 25]

some_array.each {|value| puts value*3}

puts ""

sum = 0

other_array.each do |value|
  sum+=value
  current = sum/value
  puts "#{current}"
end

#sum of squares

sum = 0 
some_array.each do |value|
  square = value * value
  sum+=square
end

puts "\n#{sum}\n\n"


#block scope
value = "some shape"
[ 1, 2 ].each {|value| puts value } 
puts "\n#{value}"


