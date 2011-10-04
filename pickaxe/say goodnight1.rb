#!/usr/local/bin/ruby -w

puts "Hello Ruby Programmer"
puts "The time is now #{Time.now}"

puts "\nAnd goodnight \nGrandma"

def say_goodnight(name)
  result = "Good night, #{name.capitalize}"
  return result
end

puts say_goodnight('uncle')

def say_gnight(name)
  "Goodnight my dear, #{name.capitalize}"
end

puts say_gnight('homer')