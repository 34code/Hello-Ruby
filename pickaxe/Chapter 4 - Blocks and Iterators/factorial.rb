def factorial(n)
  result = 1
  (2..n).each do |i|
    result*=i
  end
  result
end

puts factorial(5)
