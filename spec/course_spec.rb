require './lib/student'
require './lib/course'

RSpec.describe Course do
  describe '#initialize' do
    it 'correctly instantiates' do
      course = Course.new("Calculus", 2)

      expect(course).to be_instance_of(Course)
      expect(course.name).to eq("Calculus")
      expect(course.capacity).to eq(2)
      expect(course.students).to eq([])
    end
  end

  describe '#enroll' do
    it 'corretly adds students to course' do
      course = Course.new("Calculus", 2)
      student_1 = Student.new({name: "Morgan", age: 21})
      student_2 = Student.new({name: "Grigor", age: 20})
      course.enroll(student_1)
      course.enroll(student_2)

      expect(course.students).to eq([student_1, student_2])
    end
  end

  describe '#full?' do
    it 'correctly determines if course is full' do
      course = Course.new("Calculus", 2)
      student_1 = Student.new({name: "Morgan", age: 21})
      student_2 = Student.new({name: "Grigor", age: 20})

      expect(course.full?).to eq(false)

      course.enroll(student_1)
      course.enroll(student_2)

      expect(course.full?).to eq(true)
    end
  end
end
