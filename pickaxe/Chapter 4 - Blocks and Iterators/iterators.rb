["H", "A", "L"].collect {|x| puts x.succ}

f = File.open("README")
f.each_with_index do |line, index|
  puts "Line #{index} : #{line}"
end
f.close

# how inject works

adder = [2,3,4,6,8,5].inject(0) {|sum, element| sum+element}
p adder

multiplier = [2,3,4,6,8,5].inject(1) {|product, element| product*element}
p multiplier