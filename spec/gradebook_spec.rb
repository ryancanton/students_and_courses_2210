require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
  describe '#initialize' do
    it 'correctly instantiates gradebook object' do
      gradebook = Gradebook.new("Mr. Oz")

      expect(gradebook).to be_instance_of(Gradebook)
      expect(gradebook.instructor).to eq("Mr. Oz")
      expect(gradebook.courses).to eq([])
    end
  end

  describe '#add_course' do
    it 'correctly adds courses to gradebook' do
      gradebook = Gradebook.new("Mr. Oz")
      course_1 = Course.new("Calculus", 2)
      course_2 = Course.new("Philosophy", 3)
      gradebook.add_course(course_1)
      gradebook.add_course(course_2)

      expect(gradebook.courses).to eq([course_1, course_2])
    end
  end

  describe '#list_courses' do
    it 'correctly lists all courses in a gradebook' do
      gradebook = Gradebook.new("Mr. Oz")
      course_1 = Course.new("Calculus", 2)
      course_2 = Course.new("Philosophy", 3)
      gradebook.add_course(course_1)
      gradebook.add_course(course_2)

      expect(gradebook.list_courses).to eq("Mr. Oz's Courses:\n" +
                                           "   Calculus: Capacity: 2\n" +
                                           "   Philosophy: Capacity: 3\n")
    end
  end

  describe '#list_students' do
    it 'correctly returns a list of students in courses' do
      gradebook = Gradebook.new("Mr. Oz")
      course_1 = Course.new("Calculus", 2)
      course_2 = Course.new("Philosophy", 3)
      student_1 = Student.new({name: "Morgan", age: 21})
      student_2 = Student.new({name: "Grigor", age: 20})
      student_3 = Student.new({name: "Bob", age: 21})
      student_1.log_score(89)
      student_2.log_score(76)
      student_3.log_score(99)
      course_1.enroll(student_1)
      course_1.enroll(student_2)
      course_2.enroll(student_3)
      gradebook.add_course(course_1)
      gradebook.add_course(course_2)
      
      expect(gradebook.list_students).to eq("Mr. Oz's Students:\n" +
                                           "   Calculus:\n" +
                                           "      Name: Morgan, Age: 21, Grade: 89.0\n" +
                                           "      Name: Grigor, Age: 20, Grade: 76.0\n" +
                                           "   Philosophy:\n" +
                                           "      Name: Bob, Age: 21, Grade: 99.0\n")
    end
  end
end
