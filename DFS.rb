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

  attr_accessor :answers

  def initialize()
    @answers = []
  end

  def findSolution(node)
    find(node,"",0)
    @answers
  end

  private

  def find(node,pos,level)

    pos = node.move.x+node.move.y + pos if level%2 == 1

    if(node.children.length == 0)
      @answers << pos if node.comment == "win"
    end

    node.children.each do |child|
      find(child,pos,level+1)
    end

  end

end



