def fib_upto(max)
  i1, i2 = 1, 1
  
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

puts ""
fib_upto(1000) {|f| print f, " "}

puts "\n"
print "\n"

seven = [1,3,5,7,9].find{|v|v*v>30}
puts "#{seven}"
