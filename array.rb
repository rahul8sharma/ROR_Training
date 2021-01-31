class Array
  def copy_map(&block)
    return self unless block_given?

    elements = []
    each { |n| elements << block.call(n) }

    elements
  end

  def copy_each(&block)
    return self unless block_given?

    each { |n| block.call(n) }
  end

  def copy_find(&block)
    return self unless block_given?

    each { |n| return n if block.call(n) }

    return nil
  end

  def copy_select(&block)
    return self unless block_given?

    elements = []
    each { |n| elements << n if block.call(n) }

    elements
  end
end

puts [1,2,3,4,5].copy_map { |i| i * 2 }

[1,2,3,4,5].copy_each { |i| puts i * 2 }

puts [1,2,3,4,5,6,7].copy_find { |x| x.between?(3,4) }

puts [1,2,3,4,5].copy_select { |num|  num.even?  }