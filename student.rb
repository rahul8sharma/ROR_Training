class Student
  @@students = []

  def add(name, roll_number, marks)
    @@students << {
      name: name,
      roll_number: roll_number,
      marks: marks
    }
  end

  def all
    @@students
  end

  def pass?(name)
    result = @@students.any? {|student| (student[:name] == name && student[:marks] >= 35)}
    result ? 'Pass' : 'Fail'
  end
end

student = Student.new
student.add('Rahul Sharma', 1, 20)
student.add('Raj Sharma', 2, 50)
puts student.all
puts student.pass?('Rahul Sharma')
puts student.pass?('Raj Sharma')