require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree.rb'

class TestBinarySearchTree < Minitest::Test
  def test_can_create_instance
    tree = BinarySearchTree.new
    assert_instance_of BinarySearchTree, tree
  end

  def test_can_insert_values
    tree = BinarySearchTree.new
    d_1 = tree.insert(61, "Bill & Ted's Excellent Adventure")
    d_2 = tree.insert(16, "Johnny English")
    d_3 = tree.insert(92, "Sharknado 3")
    d_4 = tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 0, d_1
    assert_equal 1, d_2
    assert_equal 1, d_3
    assert_equal 2, d_4
  end

  def test_can_check_for_scores
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert tree.include?(16)
    refute tree.include?(72)
  end

  def test_can_get_depth
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 1, tree.depth_of(92)
    assert_equal 2, tree.depth_of(50)
  end

  def test_can_find_max
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 92, tree.max
  end
end
