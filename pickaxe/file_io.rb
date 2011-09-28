f = File.open("para.txt") 
f.each_with_index do |line, index|
puts "Line #{index} is: #{line}" end
f.close