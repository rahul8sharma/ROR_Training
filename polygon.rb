class Polygon
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  private

  def area(block)
    block.call(*@params)
  end

  def self.info
    puts "Belongs to the #{self} class"
  end
end

class Rectangle < Polygon
  attr_accessor :length, :breadth

  def initialize(length:, breadth:)
    @length, @breadth = length, breadth
    super([@length, @breadth])
  end

  def area
    super (lambda { |length, breadth| length * breadth })
  end
end

class Square < Polygon
  def initialize(a:)
    super([a] )
  end

  def area
    super (lambda { |a| a * a })
  end
end

class Triangle < Polygon
  def initialize(h:, b:)
    super([h, b] )
  end

  def area
    super (lambda { |h, b| (h * b) / 2 })
  end
end

puts Rectangle.new(length: 10, breadth: 10).area()
Rectangle.info
puts Square.new(a: 10).area()
Square.info
puts Triangle.new(h: 10, b: 10).area()
Triangle.info