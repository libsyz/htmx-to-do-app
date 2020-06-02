
class Task < Struct.new(:description, :done)
    def initialize(description, done = false)
      super
    end

    def mark_as_done!
      self.done = true
    end

    def done?
      done
    end
end
