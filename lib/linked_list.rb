module Linked_list_fundamental

  def reverse_linked_list_example
    root = Node.new
    root.next = Node.new(1, nil)
    root.next.next = Node.new(2, nil)
    root.next.next.next = Node.new(3, nil)

    puts "Original linked list"
    print_linked_list(root)
    root = reverse_linked_list(root)
    puts "\n Reversed linked list:" 
    print_linked_list(root)
  end

  def print_linked_list(root)
    while (root != nil)
      if (root.next == nil)
        print "#{root.val} -> nill"
      else
        print "#{root.val} -> "
      end
      root = root.next
    end
    puts
  end

  # reverse a linkedList
  def reverse_linked_list(root)
    prev = nil
    current = root
    while current != nil
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end
    return prev
  end
end

class Node
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end


