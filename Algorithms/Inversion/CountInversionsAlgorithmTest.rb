require 'test/unit'
require './CountArrayInversions'

class TestSimpleSorts < Test::Unit::TestCase

  def setup
    @testArr1 = [1,3,5,2,4,6]
    @testArr2 = [9,1,5,4,8,3,0,7,6,2]

    @expect1 = 3
    @expect2 = 27
  end

  def teardown
  end

  def testCanCountInversionNumberInArray
    ci = CountInversions.new
    actual1 = ci.count(@testArr1)
    actual2 = ci.count(@testArr2)

    assert_equal @expect1,actual1
    assert_equal @expect2,actual2
  end

end


