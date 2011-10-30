h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
p h.length
p h['dog'] 
h['cow'] = 'bovine'
h[12] = 'dodecine'
h['cat'] = 99
p h

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

p words_from_string("But I didn't inhale, he said (emphatically)...")

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end

raw_text = File.read("para.txt")
words_list = words_from_string(raw_text)
counts = count_frequency(words_list)
sorted = counts.sort_by {|word, count| count}
top_5 = sorted.last(5)

p top_5



