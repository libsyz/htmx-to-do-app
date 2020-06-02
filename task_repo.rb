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
    @tasks << Task.new("Do the dishes") << Task.new("Do the laundry")
  end

end
