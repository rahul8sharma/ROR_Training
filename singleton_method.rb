class Text
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def size
    data.size
  end
end

text1 = Text.new('Hello World!')
puts text1.size

text2 = Text.new('Hello World!')
data = text2.data

# Singleton method for text2 object
def text2.size
  data.size + 2
end
puts text2.size