module Tree
  class TreeNode
    attr_accessor :val, :left, :right, :type
    def initialize(val = 0, _left = nil, _right = nil)
      @val = val
      @left = _left
      @right = _right
      @type = "Tree Node"
    end
  end

  class BinaryTree
    attr_accessor :root
    def initialize(_root = nil)
      @root = _root
      self.is_valid_binary_tree(_root)
    end

    # root left right
    def inorder_traverse(root)
      if root
        print "#{root.val} "
        inorder_traverse(root.left)
        inorder_traverse(root.right)
      end
    end


    # left root right
    def preorder_traverse(root)
      if !root
        return
      end

      if root.left
        preorder_traverse(root.left)
      end

      print "#{root.val} "

      if root.right
        preorder_traverse(root.right)
      end
    end

    # left right root
    def postorder_traverse(root)
      if !root
        return
      end

      if root.left
        preorder_traverse(root.left)
      end

      if root.right
        preorder_traverse(root.right)
      end
      print "#{root.val} "
    end

    # check if binary tree is valid
    def is_valid_binary_tree(root)
      if !root
        return;
      end
      if root && root.left
        if root.val <= root.left.val
          raise Exception.new "In binary tree the root value must be greater than its left child. Current root #{root.val} left child#{left.right.val}"
        end
      end
      if root && root.right
        if root.val >= root.right.val
          raise Exception.new "In binary tree the root value must be less than its right child. Current root #{root.val} right child #{root.right.val}"
        end
      end

      is_valid_binary_tree(root.left)
      is_valid_binary_tree(root.right)
    end

  end
end
