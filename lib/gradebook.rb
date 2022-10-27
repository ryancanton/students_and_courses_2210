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
    courses_list = @courses.sum do |course|
      "   #{courese.name}: Capacity: #{course.capacity}/n"
    end
    courses_list.insert(0, "#{@instructor}'s Courses:/n")
  end
end
