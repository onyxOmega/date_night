class BinarySearchTree
  def initialize
    @title = nil
    @score = nil
    @subtree = {}
  end

  def insert(score, title)
    depth = 0
    if @title == nil
      set_root(score, title)
    elsif score >= @score
      depth = @subtree[:+].insert(score, title) + 1
    else
      depth = @subtree[:-].insert(score, title) + 1
    end
    depth
  end

  def set_root(score, title)
    @title = title
    @score = score
    @subtree[:+] = BinarySearchTree.new
    @subtree[:-] = BinarySearchTree.new
  end

  def include?(score)
    return false if @score == nil
    return true if score == @score
    return @subtree[:+].include?(score) || @subtree[:-].include?(score)
  end

  def depth_of(score)
    return nil if !include?(score)
    return 0 if @score == score
    if @subtree[:+].depth_of(score) != nil
      depth = @subtree[:+].depth_of(score) + 1
    elsif @subtree[:-].depth_of(score)
      depth = @subtree[:-].depth_of(score) + 1
    end
  end

  def max

end
