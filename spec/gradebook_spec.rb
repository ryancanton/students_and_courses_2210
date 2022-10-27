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
end
