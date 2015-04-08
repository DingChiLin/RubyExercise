FIXNUM_MAX = (2**(0.size * 8 -2) -1)

class ClosestPairFinder

  def bruteFind(pairs)
    len = pairs.length
    max = FIXNUM_MAX
    cloesetPair = []

    for i in 0...len-1
      for j in i+1...len
        d = distance(pairs[i],pairs[j])
        if d < max
          max = d
          cloesetPair = [pairs[i],pairs[j]]
        end
      end
    end

    cloesetPair
  end

  def find(pairs)

    px = pairs.sort
    py = pairs.sort{|x,y| x[1] <=> y[1]}
    findClosestPairWithSortedPair(px,py)

  end

  private

  def findClosestPairWithSortedPair(px,py)

    len = px.length

    if(len >= 4)

      pxLeftX = px[0...len/2]
      pxRightX = px[len/2...len]

      pxLeftY = py.select { |p| p[0] <= px.last[0] }
      pxRightY = py.select { |p| p[0] >= px.first[0] }

      closestPairLeft = findClosestPairWithSortedPair(pxLeftX,pxLeftY)
      left_min_distance = distance(closestPairLeft[0],closestPairLeft[1])

      closestPairRight = findClosestPairWithSortedPair(pxRightX,pxRightY)
      right_min_distance = distance(closestPairRight[0],closestPairRight[1])

      min_distance = [left_min_distance,right_min_distance].min

      closestPairSplit = findClosestSplitPairWithSortedPair(px,py,min_distance)
      split_min_distance = closestPairSplit.nil? ? FIXNUM_MAX : distance(closestPairSplit[0],closestPairSplit[1])

      if split_min_distance <= min_distance
        closestPairSplit
      elsif left_min_distance <= right_min_distance
        closestPairLeft
      else
        closestPairRight
      end

    elsif

      min_distance = FIXNUM_MAX
      closetPair = []
      for i in 0...len
        for j in i+1 ... len
          distance_p = distance(px[i],px[j])
          if distance_p < min_distance
            min_distance = distance_p
            closetPair = [px[i],px[j]]
          end
        end
      end
      closetPair

    end

  end

  def findClosestSplitPairWithSortedPair(px,py,min_distance)
    x_bar = px[px.length/2-1][0]

    p_strip = py.select{ |p| p[0] <= x_bar + min_distance || p[0] >= x_bar - min_distance }
    len = p_strip.length

    min_split_distance = FIXNUM_MAX
    closetSplitPair = []
    for i in 0...len
      for j in 1..[7,len-i-1].min
        distance_p = distance(p_strip[i],p_strip[i+j])
        if distance_p < min_split_distance
          min_split_distance = distance_p
          closetSplitPair = [p_strip[i],p_strip[i+j]]
        end
      end
    end

    min_split_distance < min_distance ? closetSplitPair : nil
  end

  def distance(p1,p2)
    Math.sqrt((p2[0]-p1[0])**2 + (p2[1]-p1[1])**2)
  end

end

