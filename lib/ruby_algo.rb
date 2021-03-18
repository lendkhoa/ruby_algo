# frozen_string_literal: true

require_relative "linked_list"
require_relative "Tree"
require_relative "dp"

include DynamicProgramming
include Linked_list_fundamental
include Tree

def main
  #Linked_list_fundamental::reverse_linked_list_example
  
  #tree.inorder_traverse(tree.root)
  #tree.preorder_traverse(tree.root)
  #tree.postorder_traverse(tree.root)
  DynamicProgramming.word_break_examples
end

main
