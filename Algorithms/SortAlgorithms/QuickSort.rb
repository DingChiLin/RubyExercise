class QuickSort

  def sort(arr)

    tmpArr = arr.clone
    sortByRange!(tmpArr,0,tmpArr.length-1)
    tmpArr

  end

  def sortByRange!(arr,l,r)

    #1. find pivit point and make it to be the first element
    p_value = findPivot!(arr,l,r)

    #2. change arr element order according to pivit point
    p_d = reorder!(arr,p_value,l,r)

    #3. resursive call
    sortByRange!(arr,l,p_d-1) if p_d-1 > l
    sortByRange!(arr,p_d+1,r) if r > p_d+1

  end

  private

  def findPivot!(arr,l,r)
    exchange!(arr,l,l+rand(r-l+1))
    arr[l]
  end

  def reorder!(arr,p_value,l,r)

    p_d = l+1 # p_division
    for i in l+1..r
      if arr[i] > p_value
        exchange!(arr,i,p_d)
        p_d += 1
      end
    end

    exchange!(arr,l,p_d-1)
    p_d-1

  end

  def exchange!(arr,i,j)
    tmp = arr[i]
    arr[i] = arr[j]
    arr[j] = tmp
  end

end

#qs = QuickSort.new
#arr = [3,8,2,5,1,4,7,6]
#arr = qs.sort(arr)
#puts "reorder" + arr.inspect

