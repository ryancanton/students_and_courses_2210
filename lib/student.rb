class Student

  attr_reader :name,
              :age,
              :scores

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @scores = []
  end

  def log_score(score)
    @scores.push(score)
  end

  def grade
    average_pts = @scores.sum / @scores.count.to_f
  end
end
