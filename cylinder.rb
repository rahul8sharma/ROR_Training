class Cylinder
  PIA = 3.14.freeze

  def initialize
    @radius = 10
  end
  def volume(height)
    PIA * @radius * @radius * height
  end
end

puts Cylinder.new.volume(10)