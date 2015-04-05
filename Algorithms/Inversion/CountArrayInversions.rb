class CountInversions

  def count(arr)
    countInversion(arr)[1]
  end

  def countInversion(arr)

    len = arr.length
    return arr, 0 if len <= 1

    lArr, lCount = countInversion(arr[0...len/2])
    rArr, rCount = countInversion(arr[len/2...len])

    mergeArr, mergeCount = merge(lArr,rArr)
    return mergeArr, lCount + rCount + mergeCount
  end

  def merge(lArr,rArr)

    mergeArr = []

    count = 0
    until lArr.empty? || rArr.empty?
      if lArr[0].to_i <= rArr[0].to_i
        mergeArr << lArr.shift
      else
        mergeArr << rArr.shift
        count+=lArr.length
      end
    end

    mergeArr.concat(lArr).concat(rArr)
    return mergeArr, count

  end
end
