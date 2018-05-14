hash = { a: 1, b: 2 }

# adding one to each hash value
newhash = {}
hash.each do |key, value|
  newhash[key] = hash[key] + 1
end
puts newhash

#zipped values, sorted and turned into a hash
hash2 = { a: 2, b: 5, c: 1 }
hash2values = hash2.values.sort
hash2keys = hash2.keys
print Hash[hash2keys.zip(hash2values)]

#convert to array and sort
print "\n"
print hash2.values.sort

#convert values and keys to a string then zip together in an array reversed
print "\n"
hash3 = { a: 1, b: 2, c: 3 }
hash3values = hash3.values.map { |value| value.to_s}
hash3keys = hash3.keys.map { |value| value.to_s}
print Hash[hash3values.zip(hash3keys)]
