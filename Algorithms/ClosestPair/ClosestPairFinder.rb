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

    closestPair = [[1,2],[3,4]]
  end

  def distance(p1,p2)
    Math.sqrt((p2[0]-p1[0])**2 + (p2[1]-p1[1])**2)
  end
end

