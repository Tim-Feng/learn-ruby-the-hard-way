require 'test/unit'
# we directly require ex47 to require the "class Room"
require_relative '../lib/ex47'

# inheritance, from Test::Unit::TestCase and it's public class method
class MyUnitTests < Test::Unit::TestCase

	# to test room
  def test_room()
    gold = Room.new("GoldRoom", 
                    """This room has gold in it you can grab. There's a
                door to the north.""")
    # assert_equal(exp, act, msg = nil) public
		# Tests if "expected" is equal to "actual"

		# check if gold.name = "GoldRoom"
    assert_equal(gold.name, "GoldRoom")
    # check if gold.paths = empty array
    assert_equal(gold.paths, {})
  end

  # to test room paths
  def test_room_paths()
  	# the parameter is the (name, description) in initialize in class Room
  	# to create new room of center/north/south
    center = Room.new("Center", "Test room in the center.")
    north = Room.new("North", "Test room in the north.")
    south = Room.new("South", "Test room in the south.")

    # to add path of center room
    center.add_paths({:north => north, :south => south})

    # check if center.go(:north) really goes to north
    assert_equal(center.go(:north), north)
    # check if center.go(:south) really goes to south
    assert_equal(center.go(:south), south)
  end

  # to test map
  def test_map()
    start = Room.new("Start", "You can go west and down a hole.")
    west = Room.new("Trees", "There are trees here, you can go east.")
    down = Room.new("Dungeon", "It's dark down here, you can go up.")

    start.add_paths({:west => west, :down => down})
    west.add_paths({:east => start})
    down.add_paths({:up => start})

    # check if start.go(:west) really go west
    assert_equal(start.go(:west), west)
    # check if start.go(:west).go(:east) will back to the start
    assert_equal(start.go(:west).go(:east), start)
    # check if start.go(:down).go(:up) will back to the start
    assert_equal(start.go(:down).go(:up), start)
  end

end