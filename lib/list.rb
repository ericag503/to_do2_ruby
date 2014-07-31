class List
  def initialize (title)
    @title = title
    @tasks = []
  end

  def title
    @title
  end

  def tasks
    @tasks
  end

  def add_remove(task) #needs argument to know what to delete
    @add_remove.delete(task)
  end

  def add_task(task)
    @tasks << task
  end
end
