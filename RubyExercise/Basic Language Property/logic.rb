total = 200

if total > 150
	puts "Large"
elsif total < 110
	puts "small"
else
	puts "NO"
end

puts "AAAAA" if total > 80

aaa = true
puts "aaa" if aaa

phone = "123-456-7890"
if phone =~ /(\d{3})-(\d{3})-(\d{4})/
	ext = $3
end

puts ext
