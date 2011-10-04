
def who_says_what
  yield("Dave", "Hello")
  yield("Andy", "Goodbye")
end

who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

#eg using blocks to create iterator

print "\n"

animals = %w(ant bee cat dog)
animals.each {|animal| puts animal}

['cat', 'dog', 'horse'].each {|name| print name," "}
5.times {print "*"}
3.upto(6) {|i| print i}
('a'..'z').each {|char| print char}