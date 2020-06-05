require_relative 'task'


class TaskRepo
  def initialize
    @tasks = []
    seed
  end

  def all
    @tasks
  end

  private

  def seed
    @tasks << Task.new("Meet Ken") << Task.new("Practice my hadouken")
  end

end
