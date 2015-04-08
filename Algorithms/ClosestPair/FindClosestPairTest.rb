require 'test/unit'
require './ClosestPairFinder'

class TestSimpleSorts < Test::Unit::TestCase

  def setup

    @pairs = []
    File.open("pairs.txt","r") do |file|
      file.each_line do |line|
        @pairs.push(line.split(" ").map(&:to_i))
      end
    end

    @expect = [[5, 5],[6, 6]]
  end

  def teardown
  end

  def testBruteForceWayToFindClosestPairProperly
    puts @pairs.inspect
    cp = ClosestPairFinder.new
    actual = cp.bruteFind(@pairs)
    assert_equal @expect.sort,actual.sort
  end

  def testFastWayToFindClosestPairProperly
    puts @pairs.inspect
    cp = ClosestPairFinder.new
    actual = cp.find(@pairs)
    assert_equal @expect.sort,actual.sort
  end

end

