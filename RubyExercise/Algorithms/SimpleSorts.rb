class SelectionSort

  def sort(arr)

    tmpArr = arr.clone

    for i in 0...arr.length
      max = i

      for j in i+1...arr.length
        if tmpArr[j] > tmpArr[max]
          max = j
        end
			end

      if max != i
        exchange!(tmpArr,i,max)
      end
		end

    tmpArr

	end

  private

  def exchange!(arr,i,j)
    tmp = arr[i]
    arr[i] = arr[j]
    arr[j] = tmp
  end

end

arr = []

ARGV.each do |arg|
	arr.push(arg.to_i)
end

ss = SelectionSort.new
puts "original: " + arr.inspect
puts "selection sort: " + ss.sort(arr).inspect
