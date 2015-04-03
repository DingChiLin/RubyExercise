arr = [1,2,3]
puts arr[0..arr.length/2-1].inspect
puts arr[arr.length/2..arr.length].inspect

puts nil.to_i
puts arr[3] == nil

arr2 = [4,5,6]

puts arr.concat(arr2).inspect
