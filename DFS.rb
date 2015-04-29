class Move

  attr_reader :x, :y

  def initialize(x,y)
    @x = numToChar(x)
    @y = numToChar(y)
  end

  def numToChar(num)
    (65+num).chr
  end

end

class Node

  attr_accessor :children, :move, :comment

  def initialize(move, comment)

    if(@children.nil?)
      @children = []
    end

    @move = move
    @comment = comment

  end

  def addChild(child)
    @children << child
  end

end

class DFS

  def self.findWin(node)
    p "COMMENT!: " + node.comment
  end

end




