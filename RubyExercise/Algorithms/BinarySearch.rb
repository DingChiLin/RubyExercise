class BinarySearch
	def search(arr,key)
		lo = 0
		hi = arr.length - 1

		while lo <= hi
			med = (lo + hi)/2
			puts med

			if(arr[med] > key)
				hi = med-1
			elsif(arr[med] < key)
				lo = med+1
			else
				return med
			end
				
		end

		return -1
	end
end

arr = (0..10000000).to_a
key = ARGV.first.to_i

bs = BinarySearch.new
puts bs.search(arr,key)

