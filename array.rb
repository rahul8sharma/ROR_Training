class Array
  def copy_map(&block)
    return self unless block_given?

    elements = []
    each { |n| elements << block.call(n) }

    elements
  end
end

puts [1,2,3,4,5].copy_map { |i| i * 2 }