a = [ 1, 3, "cat" ]
h = { dog: "canine", fox: "lupine" }

enum_a = a.to_enum
enum_h = h.to_enum

p enum_a.next
p enum_a.next
p enum_a.next

p enum_h.next
p enum_h.next
p enum_h.next