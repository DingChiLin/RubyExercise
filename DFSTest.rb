require 'test/unit'
require './DFS'

class TestSimpleSorts < Test::Unit::TestCase

  def setup

    @node1 = Node.new(Move.new(1,1),"one")
    @node2 = Node.new(Move.new(2,2),"two")
    @node3 = Node.new(Move.new(3,3),"win") #win
    @node4 = Node.new(Move.new(4,4),"four")
    @node5 = Node.new(Move.new(5,5),"five")
    @node6 = Node.new(Move.new(6,6),"six")
    @node7 = Node.new(Move.new(7,7),"seven")
    @node8 = Node.new(Move.new(8,8),"eight")
    @node9 = Node.new(Move.new(9,9),"win") #win
    @node10 = Node.new(Move.new(10,10),"ten")
    @node11 = Node.new(Move.new(11,11),"eleven")
    @node12 = Node.new(Move.new(12,12),"twelve")
    @node13 = Node.new(Move.new(13,13),"thirteen")
    @node14 = Node.new(Move.new(14,14),"fourteen")
    @node15 = Node.new(Move.new(15,15),"fifteen")

    @node4.addChild(@node1)
    @node4.addChild(@node2)
    @node4.addChild(@node3)

    @node7.addChild(@node4)
    @node7.addChild(@node5)
    @node7.addChild(@node6)

    @node10.addChild(@node7)

    @node11.addChild(@node8)
    @node11.addChild(@node9)

    @node14.addChild(@node10)
    @node14.addChild(@node11)
    @node14.addChild(@node12)

    @node15.addChild(@node13)
    @node15.addChild(@node14)

  end

  def teardown
  end

  def testNodeIsSettedProperly

    assert_equal "L", @node15.children[1].children[1].move.x
    assert_equal "win", @node11.children[1].comment
    assert_equal "win", @node7.children[0].children[2].comment
  end

  def testDFScanFindThePathToWinComment

    @expect = ["JJOO","DDHHOO"].sort
    @actual =  DFS.new.findSolution(@node15).sort
    p @actual
    assert_equal @expect,@actual
  end
end
