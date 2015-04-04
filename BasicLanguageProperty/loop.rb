arr = [11,22,33]

arr.each do |num|
	puts num
end

5.times do |num2|
	puts num2
end

config = { :foo => 123, :bar => 456}
puts config[:foo]

config.each do |key, value|
	puts "#{key} is #{value}"
end

i=0
while(i<10)
	i += 1
	next if i%2 == 0
	puts i  #1 3 5 7
	break if i>6
end

#---

1.upto(9) do
  |x| puts "Hello #{x}"
end 
#---

arr1 = ["1", "3", "2" ,"4"]
arr2 = arr1.map{|x| x.to_i*5}
puts arr2.inspect

arr3 = arr1.find_all{|x| x.to_i<3}
puts arr3.inspect

# arr4 = arr1.delete_if{|x| x.to_i<3}
# puts arr4.inspect
puts arr1.inspect

arr5 = arr1.sort!{|a,b| a.to_i <=> b.to_i}
puts arr5.inspect

(5..10).each {|x| puts "HI #{x}"}

puts (5..10).inject {|sum, n| sum+n}









