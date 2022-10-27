require './lib/student'

RSpec.describe Student do
  describe '#initialize' do
    it 'instantiates correctly' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student).to be_instance_of(Student)
      expect(student.name).to eq("Morgan")
      expect(student.age).to eq(21)
      expect(student.scores).to eq([])
    end
  end

  describe '#log_score' do
    it 'correctly logs the students scores' do
      student = Student.new({name: "Morgan", age: 21})
      student.log_score(89)
      student.log_score(78)

      expect(student.scores).to eq([89, 78])
    end
  end



end
