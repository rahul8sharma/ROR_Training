# Create a ruby block which takes an argument and multiply with 2
# Implement a Proc which takes an argument and multiply with 2. Call this proc inside a loop
# Implement a Lambda which takes an argument and returns the output by multiply arg with 2. Call this lambda inside a loop and return modified array

# Example of block
class BlockClass
  def multiply
    return 'No block found' unless block_given?
    yield(2)
  end
end

puts BlockClass.new.multiply { |x| x * 2 }

# Example of proc
class ProcClass
  def multiply(proc)
    (1..10).each do |x|
      puts proc.call(x)
    end
  end
end

proc = Proc.new { |x| x * 2 }
ProcClass.new.multiply(proc)

# Example of lambda
class LambdaClass
  def multiply(lambda)
    [1,2,3,4,5].map { |n| lambda.call(n) }
  end
end

lambda = lambda { |x| x * 2 }
puts LambdaClass.new.multiply(lambda)

# Another example for the above problem using lambda
class Array
  def multiply(lambda)
    elements = []
    each do |n|
      elements << lambda.call(n)
    end
    elements
  end
end

puts [1,2,3,4,5].multiply(lambda)

