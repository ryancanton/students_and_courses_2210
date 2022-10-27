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

end
