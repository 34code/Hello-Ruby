a = [ 1, 3, 5, 7, 9 ] 

#how arrays are indexed

p a[1,3] 
p a[3, 1] 
p a[-3, 2]
p a[5]

#ranges : the 3 period form does not include the end range.

b = [ 1, 3, 5, 7, 9 ]

p b[1..3]

stack = []
    stack.push "red"
    stack.push "green"
    stack.push "blue"
    p stack
    puts stack.pop
    puts stack.pop
    puts stack.pop
    p stack
    
#FIFO queue
queue = [] 
queue.push "red" 
queue.push "green" 
puts queue.shift
puts queue.shift

#first and last parts of an array

array = [ 1, 2, 3, 4, 5, 6, 7 ] 
p array.first(4)
p array.last(4)
