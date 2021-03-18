require "set"

module DynamicProgramming
  def word_break_examples()
    puts "#{word_break("leetcode", ["leet", "code"])}"
    puts "#{word_break("ab", ["a", "b"])}"
  end

  # Given a string input & dict
  # return true if the string can be segmented
  # into elements from dict
  def word_break(s, word_dict)
    # perform
    word_set = word_dict.to_set
    queue = Queue.new
    visited = Array.new(s.length) { false }
    queue.push(0)

    until queue.empty?
      start = queue.pop.to_i
      if visited[start] 
        next
      end
      
      # BFS
      for endIndex in start + 1 .. s.length.to_i
        # check prefix inside set
        #puts "start #{start} vs end #{endIndex} - #{s[start...endIndex]}"
        if word_set.include?(s[start...endIndex])
          #puts ">#{s[start...endIndex]} next index #{endIndex}"
          if endIndex == s.length
            return true
          end
          queue.push(endIndex)
        end
      end
      visited[start] = true
    end
    false
  end
end
