# Create a custom DivisionError ruby class and raise the exception for this class while dividing a number with 0

class DivisionError < StandardError

  # Override the message method
  def message
    "Number can not divide by zero"
  end
end

class Number
  attr_accessor :dividend, :divisor

  def initialize(dividend:, divisor:)
    @dividend, @divisor = dividend, divisor
  end

  def dividing
    (@dividend / @divisor) rescue (raise DivisionError)
  end
end

puts Number.new(dividend: 4, divisor: 2).dividing
puts Number.new(dividend: 2, divisor: 0).dividing