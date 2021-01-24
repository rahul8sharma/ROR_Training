class Rectangle
  attr_writer :length, :breadth

  def initialize(length:, breadth:)
    @length, @breadth = length, breadth
  end

  def area
    @length * @breadth
  end
end

rectangle = Rectangle.new(length: 10, breadth: 20)
puts rectangle.area

rectangle.length = 20
rectangle.breadth = 30
puts rectangle.area