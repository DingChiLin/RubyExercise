class SelectionSort
	def sort(arr)
	
		for i in 0...arr.length
			for j in i+1...arr.length
				puts "j=#{j}"
				

			end
		end

	end
end

arr = []

ARGV.each do |arg|
	arr.push(arg.to_i)
end

ss = SelectionSort.new
puts ss.sort(arr).inspect
