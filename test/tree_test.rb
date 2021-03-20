require 'minitest/autorun'
require 'minitest/pride'
require './lib/Tree'

class TreeTest < Minitest::Test
  def test_valid_binary_tree
    root = Tree::TreeNode.new(2)
    root.left = Tree::TreeNode.new(1, nil, nil)
    root.right = Tree::TreeNode.new(3, nil, nil)
    root.right.right = Tree::TreeNode.new(4, nil, nil)
    Tree::BinaryTree.new(root)
  end

  def test_invalid_binary_tree
    root = Tree::TreeNode.new(2)
    root.left = Tree::TreeNode.new(1, nil, nil)
    root.right = Tree::TreeNode.new(3, nil, nil)
    root.right.right = Tree::TreeNode.new(3, nil, nil)
    assert_raises Exception do
      Tree::BinaryTree.new(root)
    end
  end
end
