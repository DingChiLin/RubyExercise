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

class InsertionSort
  def sort(arr)

    tmpArr = arr.clone

    for i in 0...arr.length
      tmpVar = tmpArr[i]
      j = i
      while j>0 && tmpArr[j-1] < tmpVar
        tmpArr[j] = tmpArr[j-1]
        j-=1
      end
      tmpArr[j] = tmpVar
    end

    tmpArr

  end

end

arr = []

ARGV.each do |arg|
	arr.push(arg.to_i)
end

puts "original: " + arr.inspect

ss = SelectionSort.new
puts "selection sort: " + ss.sort(arr).inspect

is = InsertionSort.new
puts "insertion sort: " + is.sort(arr).inspect

