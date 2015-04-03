require 'test/unit'
require './SimpleSorts'

class TestSimpleSorts < Test::Unit::TestCase

  def setup
    @testArr = [1,5,3,4,2,7,6,10,0,9,8]
    @expect = [10,9,8,7,6,5,4,3,2,1,0]
  end

  def teardown
    @testArr = []
    @expect = []
  end

  def testSelectionSortsCanSortInputArrayProperly
    ss = SelectionSort.new
    actual = ss.sort(@testArr)
    assert_equal actual,@expect
  end

  def testInsertionSortsCanSortInputArrayProperly
    ss = InsertionSort.new
    actual = ss.sort(@testArr)
    assert_equal actual,@expect
  end

  def testBubbleSortsCanSortInputArrayProperly
    ss = BubbleSort.new
    actual = ss.sort(@testArr)
    assert_equal actual,@expect
  end


end


