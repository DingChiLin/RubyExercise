class MergeSort

  def sort(arr)

    len = arr.length
    return arr if len <= 1

    leftArr = sort(arr[0..len/2-1])
    rightArr = sort(arr[len/2..len-1])
    mergeArr = merge(leftArr,rightArr)

  end

  def merge(leftArr,rightArr)
    mergeArr = []

    until leftArr.empty? || rightArr.empty?
      if leftArr[0] >= rightArr[0]
        mergeArr << leftArr.shift
      else
        mergeArr << rightArr.shift
      end
    end

    mergeArr.concat(leftArr).concat(rightArr)
  end

end
