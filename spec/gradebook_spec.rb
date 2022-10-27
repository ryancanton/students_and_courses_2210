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
end
