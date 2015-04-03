class SelectionSort

  def sort(arr)

    tmpArr = arr.clone

    for i in 0...tmpArr.length
      max = i

      for j in i+1...tmpArr.length
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

    for i in 0...tmpArr.length
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

class BubbleSort
  def sort(arr)
    tmpArr = arr.clone

    for i in 0...tmpArr.length

      swapped = false
      for j in 0...tmpArr.length-i-1
        if tmpArr[j] < tmpArr[j+1]
          exchange!(tmpArr,j,j+1)
          swapped = true
        end
      end

      if !swapped
        break
      end
    end

    tmpArr
  end

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

puts "original: " + arr.inspect

ss = SelectionSort.new
puts "selection sort: " + ss.sort(arr).inspect

is = InsertionSort.new
puts "insertion sort: " + is.sort(arr).inspect

