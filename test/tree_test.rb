require 'minitest/autorun'
require 'minitest/pride'
require './lib/Tree'

class TreeTest < Minitest::Test
  def test_valid_binary_tree
    root = Tree::Tree_Node.new(2)
    root.left = Tree::Tree_Node.new(1, nil, nil)
    root.right = Tree::Tree_Node.new(3, nil, nil)
    root.right.right = Tree::Tree_Node.new(4, nil, nil)
    Tree::Binary_Tree.new(root)
  end

  def test_invalid_binary_tree
    root = Tree::Tree_Node.new(2)
    root.left = Tree::Tree_Node.new(1, nil, nil)
    root.right = Tree::Tree_Node.new(3, nil, nil)
    root.right.right = Tree::Tree_Node.new(3, nil, nil)
    assert_raises Exception do
      Tree::Binary_Tree.new(root)
    end
  end
end
