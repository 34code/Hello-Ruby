a = [ 1, 3, "cat" ]
h = {dog: "canine", fox: "lupine"}

enum_a = a.to_enum
enum_h = h.to_enum

p enum_a.next
p enum_a.next
p enum_a.next

p enum_h.next
p enum_h.next

puts #newline space

a = [ 2, 5, "cat" ]
enum_a = a.each # create an Enumerator using an internal iterator

p enum_a.next
p enum_a.next
p enum_a.next

puts #newline space


# loop understands enums and works like magic!

short_enum = [1,2,3,4,5].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

# Indexing stuff with enums

result = []
"stereotype".each_char.with_index {|item, index| result << [item, index] }

p result

# A little too magicy!

enum_good = (1..10).enum_for(:each_slice, 3)
p enum_good.to_a 


