
class Task < Struct.new(:description, :done)
    def initialize(description, done = false)
      super
    end

    def mark_as_done!
      done = true
    end

    def done?
      done
    end
end

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
