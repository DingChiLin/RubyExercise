require 'test/unit'
require './SimpleSorts'
require './MergeSort'

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
    retain_arr = @testArr.clone
    actual = ss.sort(@testArr)
    assert_equal actual,@expect
    assert_equal retain_arr, @testArr
  end

  def testInsertionSortsCanSortInputArrayProperly
    ss = InsertionSort.new
    retain_arr = @testArr.clone
    actual = ss.sort(@testArr)
    assert_equal actual,@expect
    assert_equal retain_arr, @testArr
  end

  def testBubbleSortsCanSortInputArrayProperly
    ss = BubbleSort.new
    retain_arr = @testArr.clone
    actual = ss.sort(@testArr)
    assert_equal actual,@expect
    assert_equal retain_arr, @testArr
  end

  def testMergeSortsCanSortInputArrayProperly
    ss = MergeSort.new
    retain_arr = @testArr.clone
    actual = ss.sort(@testArr)
    assert_equal actual,@expect
    assert_equal retain_arr, @testArr
  end

end


