class Student
  @@students = []

  def add(name, roll_number, marks)
    # There is no use of below formula for now as we are having single marks
    # but when we have a more marks then it will be useful for us.
    percentage = (marks * 100) / 100
    @@students << {
      name: name,
      roll_number: roll_number,
      marks: marks,
      percentage: percentage
    }
  end

  def all
    @@students
  end

  def pass?(name)
    result = @@students.any? {|student| (student[:name] == name && student[:marks] >= 35)}
    result ? 'Pass' : 'Fail'
  end

  def get_grade(name)
    student = @@students.find {|student| student[:name] == name}
    case student[:marks]
    when 81..100
      'A'
    when 60..80
      'B'
    when 40..59
      'C'
    else
      'D'
    end
  end
end

student = Student.new
student.add('Rahul Sharma', 1, 20)
student.add('Raj Sharma', 2, 50)
puts student.all
puts student.pass?('Rahul Sharma')
puts student.pass?('Raj Sharma')
puts student.get_grade('Rahul Sharma')
puts student.get_grade('Raj Sharma')