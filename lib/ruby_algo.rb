# frozen_string_literal: true

require_relative "linked_list"
require_relative "Tree"
require_relative "dp"
require_relative "dfs"

include DynamicProgramming
include Linked_list_fundamental
include Tree
include DFS

def main
  #Linked_list_fundamental::reverse_linked_list_example
  
  #tree.inorder_traverse(tree.root)
  #tree.preorder_traverse(tree.root)
  #tree.postorder_traverse(tree.root)
  #DynamicProgramming.word_break_examples
  #DFS.valid_bst_examples
  #DFS.lca_examples
  DynamicProgramming.palindrome_partitioning

end

main
