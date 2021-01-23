class Student
  @@students = []
  def add(name, roll_number, marks)
    @@students << {
      name: name,
      roll_number: roll_number,
      marks: marks
    }
  end

  def get_students
    @@students
  end
end

student = Student.new
student.add('Rahul Sharma', 1, 20)
student.add('Raj Sharma', 2, 50)

puts student.get_students