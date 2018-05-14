array1 = [1,2,3,4,5]
array2 = [1,3,5,4,2]

#to hold the generated array
newarr = []

#add a number to each one
array1.each do |number|
  newarr << number + 1
end
print newarr.to_s + "\n"

#sorted array
print array2.sort.to_s + "\n"
newarr = []

#sort and add 1 to each
array2.sort.each do |number|
  newarr << number + 1
end

print newarr.to_s + "\n"
puts array1.sum

#total multiplied by 2
puts array1.sum * 2
