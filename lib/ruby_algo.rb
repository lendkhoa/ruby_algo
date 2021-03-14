# frozen_string_literal: true

require_relative "linked_list"
require_relative "Tree"

include Linked_list_fundamental
include Tree

def main
  #Linked_list_fundamental::reverse_linked_list_example
  root = Tree::Tree_Node.new(2)
  root.left = Tree::Tree_Node.new(1, nil, nil)
  root.right = Tree::Tree_Node.new(3, nil, nil)
  root.right.right = Tree::Tree_Node.new(4, nil, nil)


  tree = Tree::Binary_Tree.new(root)
  #tree.inorder_traverse(tree.root)
  #tree.preorder_traverse(tree.root)
  #tree.postorder_traverse(tree.root)
end

main
