hash = { a: 1, b: 2 }

# adding one to each hash value
newhash = {}
hash.each do |key, value|
  newhash[key] = hash[key] + 1
end
puts newhash

hash2 = { a: 2, b: 5, c: 1 }
hash2values = hash2.values.sort
hash2keys = hash2.keys
print Hash[hash2keys.zip(hash2values)]
