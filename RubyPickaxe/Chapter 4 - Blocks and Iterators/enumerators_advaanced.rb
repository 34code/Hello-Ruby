triangular_numbers = Enumerator.new do |yielder| 
  number = 0
  count = 1
  loop do
    number += count 
    count += 1 
    yielder.yield number
  end
end

5.times { puts triangular_numbers.next }

#enumerators are enumerable
p triangular_numbers.first(10)