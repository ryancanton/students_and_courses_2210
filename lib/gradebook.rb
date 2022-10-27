class Gradebook

  attr_reader :instructor,
              :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses.push(course)
  end

  def list_courses
    courses_list = ""
    @courses.each do |course|
      courses_list += "   #{course.name}: Capacity: #{course.capacity}\n"
    end
    courses_list.insert(0, "#{@instructor}'s Courses:\n")
  end

  def list_students
    student_list = ""
    @courses.each do |course|
      student_list += "   #{course.name}:\n"
      course.students.each do |student|
        student_list += "      Name: #{student.name}, Age: #{student.age}, Grade: #{student.grade}\n"
      end
    end
    student_list.insert(0, "#{@instructor}'s Students:\n")
  end
end
