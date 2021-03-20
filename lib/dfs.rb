require_relative "Tree"

module DFS
  def valid_bst_examples
    root = Tree::TreeNode.new(6, nil, nil)
    root.left = Tree::TreeNode.new(4, nil, nil)
    root.right = Tree::TreeNode.new(8, nil, nil)
    root.left.left = Tree::TreeNode.new(3, nil, nil)
    root.left.right = Tree::TreeNode.new(5, nil, nil)
    puts "Root #{root.val} is a valid BST? #{check_valid_bst(root)}"
  end

  def dfs_valid_bst(root, min, max)
    if root.nil?
      return true;
    end
    puts "at #{root.val}" unless !root.is_a?(Tree::TreeNode) 
    if root.is_a?(Tree::TreeNode) && !(min <= root.val && root.val <= max)
      false
    end
    dfs_valid_bst(root.left, min, root.val) && dfs_valid_bst(root.right, root.val, max)
  end

  def check_valid_bst(root)
    dfs_valid_bst(root, -10_000, 10_000)
  end

  def lca_examples
    root = Tree::TreeNode.new(6, nil, nil)
    root.left = Tree::TreeNode.new(4, nil, nil)
    root.right = Tree::TreeNode.new(8, nil, nil)
    root.left.left = Tree::TreeNode.new(3, nil, nil)
    root.left.right = Tree::TreeNode.new(5, nil, nil)

    puts "The LCA of 3 and 5: #{lowest_common_accessor(root, root.left.left, root.left.right).val}"
  end

  # return the lowest common accessor in
  def lowest_common_accessor(root, node1, node2)
    if root.nil?
      return nil
    end
    # case 1, one of the node is the root
    if root.is_a?(Tree::TreeNode) && (root.val == node1.val || root.val == node2.val)
      return root
    end

    left = lowest_common_accessor(root.left, node1, node2)
    right = lowest_common_accessor(root.right, node1, node2)

    if !left.nil? && !right.nil?
      return root
    end

    if(!left.nil?)
      return left
    end

    if(!right.nil?)
      return right
    end

    return nil
  end

end
