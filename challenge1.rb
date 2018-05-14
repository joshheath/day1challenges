array1 = [1,2,3,4,5]
array2 = [1,3,5,4,2]
newarr = []
array1.each do |number|
  newarr << number + 1
end
print newarr.to_s + "\n"
print array2.sort.to_s + "\n"
newarr = []
array2.sort.each do |number|
  newarr << number + 1
end
print newarr.to_s + "\n"
