class Add
  CONSTANT_NUMBER = 10.freeze
  @@class_number = 10

  def initialize
    @instance_number = 20
  end
  def sum(local_variable_number)
    local_variable_number + @instance_number + @@class_number + CONSTANT_NUMBER
  end
end

puts Add.new.sum(10)