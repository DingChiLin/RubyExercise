plain_text = ARGV.first

plain_text_english_only = plain_text.split(//).delete_if do |c|
	!( c[0].ord >= 65 && c[0].ord <= 90 ) && ! ( c[0].ord >= 97 && c[0].ord <= 122 ) 
end

patch_num = plain_text_english_only.length % 5
(5-patch_num).times do 
	plain_text_english_only << "X"
end


plain_text_five = ""
index=0

plain_text_english_only.each do |c|
	plain_text_five << c

	index+=1
	if index>=5
		plain_text_five << " "
		index=0
	end

end

plain_text_upcase = plain_text_five.upcase

puts plain_text_upcase

