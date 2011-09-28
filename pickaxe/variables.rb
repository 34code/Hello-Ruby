person = "Tim"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}" 
puts "and a value of '#{person}'"

#freeze stuff {error expected}

person1 = "Tim"
person2 = person1
person1.freeze # prevent modifications to the object person2[0] = "J"

person2[0]="J"
